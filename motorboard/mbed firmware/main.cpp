#include "mbed.h"
#include "EthernetInterface.h"
#include <string>
#include <iostream>
#include <stdlib.h>
#define DEBUG false
#define TIMEOUT true
#define ECHO_SERVER_PORT 7

// Hardware definition
Timer timer;
Serial serial(p13, NC, 9600);

// mbed Pin definition
DigitalOut myLED1(LED1);
DigitalOut myLED2(LED2);
DigitalOut myLED3(LED3);
DigitalOut myLED4(LED4);
DigitalOut boardLED(p8);
DigitalOut eStopLight(p12);
DigitalIn eStopStatus(p18);

InterruptIn encoderLeftPinA(p28);
DigitalIn encoderLeftPinB(p27);
InterruptIn encoderRightPinA(p26);
DigitalIn encoderRightPinB(p25);
AnalogIn battery(p20);

// function prototypes
void parseCommand(char *);
void tickLeft();
void tickRight();
void pid();
void parseNonMotor(char *);
void setLeftSpeed(int);
void setRightSpeed(int);
void bothMotorStop();

// Serial Comm
long lastCmdTime = 0;
int lastLoopTime = 0;
// char buffer[256];
char returnbuffer[256];
int retMsgLength = 0;

// PID variable definition
float desiredSpeedL = 0;
float desiredSpeedR = 0;
float actualSpeedL = 0;
float actualSpeedR = 0;
float ErrorL = 0;
float ErrorR = 0;
float dErrorL = 0;
float dErrorR = 0;
float iErrorL = 0;
float iErrorR = 0;
float dT_sec = 0;
float lastErrorL = 0;
float lastErrorR = 0;
float P_l = 8;
float D_l = 0;
float P_r = 8;
float D_r = 0;
float I_l = 0;
float I_r = 0;
float accel[3];
float gyro[3];
float magne[3];
int dPWM_L = 0;
int dPWM_R = 0;
int PWM_L = 0;
int PWM_R = 0;
int eStopOutput;

// Encoder values
volatile int tickDataRight = 0;
volatile int tickDataLeft = 0;

// Constant Definition
const double wheelCircum = 1.092;
const double gearRatio = 32.0;
const int ticksPerRev = 48;
const double metersPerTick = wheelCircum / (ticksPerRev * gearRatio);

bool gotCommand = false;
bool nonMotorCommand = false;
int estop = 1;
char commandType;

int main() {
    printf("Setting up ethernet interface...\r\n");
    EthernetInterface eth;
    char *ip = "192.168.1.20"; // server ip address
    int res = eth.init(ip, 0, 0); // initialize the interface
    eth.connect(1000); // connect with a timoeout of 1s
    printf("result code is %d\r\n", res);
    printf("Server IP Address is: %s\r\n", eth.getIPAddress());

    // Instantiate a TCP Socket Server and bind it to the specified port
    TCPSocketServer server;
    server.bind(ECHO_SERVER_PORT);
    server.listen();

    myLED1 = 1;
    // Set interrupt function
    encoderLeftPinA.rise(&tickLeft);
    encoderRightPinA.rise(&tickRight);

    wait(0.5);
    myLED1 = 0;

    timer.reset();
    timer.start();

    while (true)
    {
        // wait for a new TCP Connection
        printf("Wait for new connection...\r\n");
        TCPSocketConnection client;
        server.accept(client);
        printf("accepted new client\r\n");
        client.set_blocking(false, 1500); // Timeout after (1.5)s

        printf("Connection from: %s\r\n", client.get_address());
        char buffer[256];
        while (true)
        {
            int n = client.receive(buffer, sizeof(buffer)-1);

            if (n <= 0)
            {
              printf("Received empty buffer: [");
              printf(buffer);
              printf("] -- ");
              printf("bytes Recieved: ");
              std::cout << n << std::endl;
            }
            else
            {
              printf("Received Command of size: ");
              std::cout << n << " bytes" << std::endl;
            }
            /**
            Perform action depending on message received.

            Command Types (denoted by first letter of buffer):
            '$' -> motor command
            '#' -> set PID values
            */
            commandType = buffer[0];

            if (commandType == '$')
            {
                // Execute motor command
                parseCommand((char *)buffer);
                gotCommand = true;
                lastCmdTime = timer.read_ms();
            }
            else if (commandType == '#')
            {
                nonMotorCommand = true;
            }

            if (nonMotorCommand)
            {
                switch (buffer[1])
                {
                case 'P':
                    parseNonMotor((char *)buffer);
                    retMsgLength = sprintf(returnbuffer, "#P%2.2f,%2.2f\n", P_l, P_r);
                    client.send_all(returnbuffer, retMsgLength);
                    break;
                case 'D':
                    parseNonMotor((char *)buffer);
                    retMsgLength = sprintf(returnbuffer, "#D%2.2f,%2.2f\n", D_l, D_r);
                    client.send_all(returnbuffer, retMsgLength);
                    break;
                case 'I':
                    parseNonMotor((char *)buffer);
                    retMsgLength = sprintf(returnbuffer, "#I%2.2f,%2.2f\n", I_l, I_r);
                    client.send_all(returnbuffer, retMsgLength);
                    break;
                default:
                    retMsgLength = sprintf(returnbuffer, "#EInvalid Command\n");
                    client.send_all(returnbuffer, retMsgLength);
                }
                nonMotorCommand = false;
            }

            // if (!TIMEOUT)
            // {
            //     if (timer.read_ms() - lastCmdTime > 500)
            //     {
            //         retMsgLength = sprintf(returnbuffer, "#ETIMEOUT\r\n");
            //         client.send_all(returnbuffer, retMsgLength);
            //         // serialNUC.printf("#ETIMEOUT\r\n");
            //         desiredSpeedL = 0;
            //         desiredSpeedR = 0;
            //         PWM_L = 0;
            //         PWM_R = 0;
            //         bothMotorStop();
            //         break;
            //     }
            // }

            if (timer.read_ms() > pow(2, 20))
            {
                timer.reset();
                lastCmdTime = 0;
            }

            // Estop logic
            if (eStopStatus.read())
            {
                // If get 5V, since inverted, meaning disabled on motors
                estop = 0;
                desiredSpeedL = 0;
                desiredSpeedR = 0;
                PWM_L = 0;
                PWM_R = 0;
                bothMotorStop();
                eStopLight = 1;
            }
            else
            {
                estop = 1;
                eStopLight = 0;
            }

            pid();
            retMsgLength = sprintf(returnbuffer, "$%1.2f,%1.2f,%1.3f\r\n", actualSpeedL, actualSpeedR, dT_sec);
            client.send_all(returnbuffer, retMsgLength);
            // if (n <= 0)
            //     break;
            // serialNUC.printf("$%1.2f,%1.2f,%1.3f\r\n", actualSpeedL, actualSpeedR, dT_sec);
            wait_ms(10);
            retMsgLength = sprintf(returnbuffer, "#V%2.2f,%d\r\n", battery.read() * 3.3 * 521 / 51, estop);
            client.send_all(returnbuffer, retMsgLength);
            // if (n <= 0)
            //     break;
            // serialNUC.printf("#V%2.2f,%d\r\n", battery.read() * 3.3 * 521 / 51, estop);
            wait_ms(10);

            // Echo received message back to client
            // if (n <= 0)
            //     break;

            memset(buffer, 0, sizeof buffer);
        }

        // client.close();
    }
}

void parseCommand(char *cmd) {
    short index = 0;
    if (cmd[index++] != '$') {
        // retMsgLength = sprintf(returnbuffer, "#EInvalid motor format $");
        // client.send_all(returnbuffer, retMsgLength);
        // serialNUC.printf("#EInvalid motor format $");
        return;
    }
    desiredSpeedL = atof(&cmd[index++]);
    while (cmd[index++] != ',' && index < 30) {}

    if (index < 50) {
        desiredSpeedR = atof(&cmd[index]);
    } else {
        // retMsgLength = sprintf(returnbuffer, "#EInvalid motor format ','");
        // client.send_all(returnbuffer, retMsgLength);
        // serialNUC.printf("#EInvalid motor format ','");
        return;
    }
}

void parseNonMotor(char *cmd) {
    short index = 1;
    char preceeding = cmd[index++];
    float val1 = atof(&cmd[2]);
    while (cmd[index++] != ',' && index < 30) {}

    float val2 = atof(&cmd[index]);

    switch (preceeding) {
    case 'P':
        P_l = val1;
        P_r = val2;
        break;
    case 'D':
        D_l = val1;
        D_r = val2;
        break;
    case 'I':
        I_l = val1;
        I_r = val2;
        break;
    default:
        // serialNUC.printf("#EFormat Error from mbed Parse Command");
        // retMsgLength = sprintf(returnbuffer, "#EFormat Error from mbed Parse Command");
        // client.send_all(returnbuffer, retMsgLength);
        return;
    }
}

void tickRight() {
    if (encoderRightPinA.read() == encoderRightPinB.read()) {
        ++tickDataRight;
    }
    else {
        --tickDataRight;
    }
}

void tickLeft() {
    if (encoderLeftPinA.read() == encoderLeftPinB.read()) {
        ++tickDataLeft;
    }
    else {
        --tickDataLeft;
    }
}

void pid() {
    dT_sec = (float)(timer.read_ms() - lastLoopTime) / 1000.0;

    if (timer.read() >= 1700) {
        timer.reset();
        lastLoopTime = 0;
    }

    lastLoopTime = timer.read_ms();
    actualSpeedL = (metersPerTick * tickDataLeft) / dT_sec;
    actualSpeedR = (metersPerTick * tickDataRight) / dT_sec;

    tickDataLeft = 0;
    tickDataRight = 0;

    ErrorL = desiredSpeedL - actualSpeedL;
    ErrorR = desiredSpeedR - actualSpeedR;

    // serialNUC.printf("ErrorL: %1.2f, ErrorR: %1.2f \r\n", ErrorL, ErrorR);

    dErrorL = ErrorL - lastErrorL;
    dErrorR = ErrorR - lastErrorR;

    iErrorL = ErrorL * dT_sec;
    iErrorR = ErrorR * dT_sec;

    dPWM_L = -(int)ceil((P_l * ErrorL + D_l * dErrorL + I_l * iErrorL));
    dPWM_R = -(int)ceil((P_r * ErrorR + D_r * dErrorR + I_r * iErrorR));

    // serialNUC.printf("dpwmL: %d, dpwmR:%d \r\n",dPWM_L, dPWM_R);

    PWM_L += dPWM_L;
    PWM_R += dPWM_R;

    PWM_L = min(255, max(-255, PWM_L));
    PWM_R = min(255, max(-255, PWM_R));

    // Deadband
    if (abs(actualSpeedL) < 0.16 && abs(desiredSpeedL) < 0.16) {
        PWM_L = 0;
    }

    if (abs(actualSpeedR) < 0.16 && abs(desiredSpeedR) < 0.16) {
        PWM_R = 0;
    }

    // PWM_L = 255;
    // PWM_R = 255;

    setLeftSpeed(PWM_L);
    setRightSpeed(PWM_R);

    // setLeftSpeed(desiredSpeedL / 2.17 * 255);
    // setRightSpeed(desiredSpeedR / 2.17 * 255);

    if (DEBUG) {
        // retMsgLength = sprintf(returnbuffer, "PWM_L: %d, PWM_R: %d\n", PWM_L, PWM_R);
        // client.send_all(returnbuffer, retMsgLength);
        // serialNUC.printf("PWM_L: %d, PWM_R: %d\n", PWM_L, PWM_R);
    }

    /*
        Be aware that this motor board does not interface with the motor
        controller with PWM. "PWM" here are mere residue from old arduino code
        -255 to 255 values are handled in motor.cpp file, mapped to 0 to 127.
    */

    lastErrorL = ErrorL;
    lastErrorR = ErrorR;

    wait_ms(20);
}


void bothMotorStop() {
    serial.putc(0);
}

void setLeftSpeed(int c) {
    c = (c + 250) / 4 + 1;
    if (c > 127)
    {
        c = 127;
    }
    else if (c < 0)
    {
        c = 0;
    }
    c += 128;
    serial.putc(static_cast<char>(c));
}

void setRightSpeed(int c) {
    c = (c + 250) / 4 + 1;
    if (c > 127)
    {
        c = 127;
    }
    else if (c < 1)
    {
        c = 1;
    }
    serial.putc(static_cast<char>(c));
}
