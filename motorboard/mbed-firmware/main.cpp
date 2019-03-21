/* mbed libraries */
#include "mbed.h"
#include "EthernetInterface.h" // mbed ethernet interface library

/* std library imports */
#include <string>
#include <cstring>
#include <stdlib.h>

#define DEBUG false

/* nanopb src files */
#include <pb_encode.h>
#include <pb_decode.h>
#include <pb_common.h>
#include "igvc.pb.h" // compiled .proto pb definition

/* ethernet setup variables */
#define ECHO_SERVER_PORT 7
#define BUFFER_SIZE 256
#define MAX_MESSAGES 1 // backlog of messages the server should hold
#define TIMEOUT_MS 50 // timeout for blocking read operations

/* hardware definitions */
Timer timer;
Serial serial(p13, NC, 9600);

/* mbed pin definitions */
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

struct SpeedPair {
  unsigned char left;
  unsigned char right;
};

/* function prototypes */
void parseRequest(const RequestMessage &req);
void tickLeft();
void tickRight();
void pid();
void setSpeeds(SpeedPair speed);
void bothMotorStop();
void triggerEstop();

/* desired motor speed (as specified by the client) */
float desiredSpeedL = 0;
float desiredSpeedR = 0;

/* actual motor speeds */
float actualSpeedL = 0;
float actualSpeedR = 0;

/* PID calculation values */
long lastCmdTime = 0;
int lastLoopTime = 0;
float ErrorL = 0;
float ErrorR = 0;
float dErrorL = 0;
float dErrorR = 0;
float iErrorL = 0;
float iErrorR = 0;
float dT_sec = 0;
float lastErrorL = 0;
float lastErrorR = 0;
float actual_speed_last_l = 0;
float actual_speed_last_r = 0;
float low_passed_pv_l = 0;
float low_passed_pv_r = 0;

/* PID constants */
float P_l = 0;
float D_l = 0;
float P_r = 0;
float D_r = 0;
float I_l = 0;
float I_r = 0;

int dPWM_L = 0;
int dPWM_R = 0;
int PWM_L = 0;
int PWM_R = 0;
int eStopOutput;

/* encoder values */
volatile int tickDataRight = 0;
volatile int tickDataLeft = 0;

/* calculation constants */
const double wheelCircum = 1.092;
const double gearRatio = 32.0;
const int ticksPerRev = 48;
const double metersPerTick = wheelCircum / (ticksPerRev * gearRatio);

/* estop logic */
int estop = 1;

int main() {
    /* Open the server (mbed) via the EthernetInterface class */
    printf("Setting up ethernet interface...\r\n");
    EthernetInterface eth;
    char *ip = "192.168.1.20"; // server ip address
    int res = eth.init(ip, 0, 0); // initialize the interface
    eth.connect(1000);
    printf("Server IP Address is: %s\r\n", eth.getIPAddress());

    /* Instantiate a TCP Socket to function as the server and bind it to the specified port */
    TCPSocketServer server;
    server.bind(ECHO_SERVER_PORT);
    server.listen(MAX_MESSAGES);

    myLED1 = 1;

    // Set interrupt function
    encoderLeftPinA.rise(&tickLeft);
    encoderRightPinA.rise(&tickRight);

    wait(0.5);
    myLED1 = 0;

    timer.reset();
    timer.start();

    /* Instantiage a TCP socket to serve as the client */
    TCPSocketConnection client;

    while (true)
    {
        /* wait for a new TCP Connection */
        printf("Waiting for new connection...\r\n");
        server.accept(client);
        printf("accepted new client\r\n");
        client.set_blocking(false, TIMEOUT_MS); // Set calls to non-blocking, timeout after TIMEOUT_MS
        printf("Connection from: %s\r\n", client.get_address());
	estop = 1;
        while (true)
        {
            /* read data into the buffer. This call blocks until data is read */
            char buffer[BUFFER_SIZE];
            int n = client.receive(buffer, sizeof(buffer)-1);

            /*
            n represents the response message for the read() command.
            - if n == 0 then the client closed the connection
            - otherwise, n is the number of bytes read
            */
            if (n < 0)
            {
                if (DEBUG) { printf("Received empty buffer\n"); }
                wait_ms(10);
                continue;
            }
            else if (n == 0)
            {
                printf("Client Closed Connection\n");
                break;
            }
            else
            {
                if (DEBUG) { printf("Received Request of size: %d\n", n); }
            }

            /* protobuf message to hold request from client */
            RequestMessage request = RequestMessage_init_zero;
            bool istatus;

            /* Create a stream that reads from the buffer. */
            pb_istream_t istream = pb_istream_from_buffer(reinterpret_cast<uint8_t*>(buffer), n);

            /* decode the message */
            istatus = pb_decode(&istream, RequestMessage_fields, &request);

            /* check for any errors.. */
            if (!istatus)
            {
                printf("Decoding failed: %s\n", PB_GET_ERROR(&istream));
                return 1;
            }

            parseRequest(request);

            /* reset the timer */
            if (timer.read_ms() > pow(2, 20))
            {
                timer.reset();
                lastCmdTime = 0;
            }

            /* estop logic */
            if (eStopStatus.read())
            {
                triggerEstop();
            }
            else
            {
                estop = 1;
                eStopLight = 0;
            }

            /* update motor velocities with PID */
            pid();

            /* protocol buffer to hold response message */
            ResponseMessage response = ResponseMessage_init_zero;

            /* This is the buffer where we will store the response message. */
            uint8_t responsebuffer[256];
            size_t response_length;
            bool ostatus;

            /* Create a stream that will write to our buffer. */
            pb_ostream_t ostream = pb_ostream_from_buffer(responsebuffer, sizeof(responsebuffer));

            /* Fill in the message fields */
            response.has_p_l     = true;
            response.has_p_r     = true;
            response.has_i_l     = true;
            response.has_i_r     = true;
            response.has_d_l     = true;
            response.has_d_r     = true;
            response.has_speed_l = true;
            response.has_speed_r = true;
            response.has_dt_sec  = true;
            response.has_voltage = true;
            response.has_estop   = true;

            response.p_l     = static_cast<float>(P_l);
            response.p_r     = static_cast<float>(P_r);
            response.i_l     = static_cast<float>(I_l);
            response.i_r     = static_cast<float>(I_r);
            response.d_l     = static_cast<float>(D_l);
            response.d_r     = static_cast<float>(D_r);
            response.speed_l = static_cast<float>(actualSpeedL);
            response.speed_r = static_cast<float>(actualSpeedR);
            response.dt_sec  = static_cast<float>(dT_sec);
            response.voltage = static_cast<float>(battery.read() * 3.3 * 521 / 51);
            response.estop   = static_cast<bool>(estop);

            /* encode the message */
            ostatus = pb_encode(&ostream, ResponseMessage_fields, &response);
            response_length = ostream.bytes_written;

            if (DEBUG) { printf("Sending message of length: %zu\n", response_length); }

            /* Then just check for any errors.. */
            if (!ostatus)
            {
                printf("Encoding failed: %s\n", PB_GET_ERROR(&ostream));
                return 1;
            }

            client.send_all(reinterpret_cast<char*>(responsebuffer), response_length);

        }

        triggerEstop();
        client.close();
    }
}

void triggerEstop()
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

/*
Update global variables using most recent client request.

@param[in] req RequestMessage protobuf with desired values
*/
void parseRequest(const RequestMessage &req)
{
    /* request contains PID values */
    if (req.has_p_l)
    {
        P_l = req.p_l;
        P_r = req.p_r;
        D_l = req.d_l;
        D_r = req.d_r;
        I_l = req.i_l;
        I_r = req.i_r;
    }
    /* request contains motor velocities */
    if (req.has_speed_l)
    {
        desiredSpeedL = req.speed_l;
        desiredSpeedR = req.speed_r;
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

// https://en.wikipedia.org/wiki/PID_controller#Discrete_implementation but with e(t) on velocity, not position
// Changes to before
// 1: Derivative on PV
// 2: Corrected integral
// 3: Low pass on Derivative
// 4: Clamping on Integral
// 5: Feed forward
void pid() {
    // 1: Calculate dt
    dT_sec = (float)(timer.read_ms() - lastLoopTime) / 1000.0;

    if (timer.read() >= 1700) {
        timer.reset();
        lastLoopTime = 0;
    }

    lastLoopTime = timer.read_ms();

    // 2: Convert encoder values into velocity
    actualSpeedL = (metersPerTick * tickDataLeft) / dT_sec;
    actualSpeedR = (metersPerTick * tickDataRight) / dT_sec;

    tickDataLeft = 0;
    tickDataRight = 0;

    // 3: Calculate error
    ErrorL = desiredSpeedL - actualSpeedL;
    ErrorR = desiredSpeedR - actualSpeedR;

    // 4: Calculate Derivative Error
    // TODO: Make alpha a parameter
    float alpha = 0.75;
    low_passed_pv_l = alpha * (actual_speed_last_l - actualSpeedL)/dT_sec + (1 - alpha) * low_passed_pv_l;
    low_passed_pv_r = alpha * (actual_speed_last_r - actualSpeedR)/dT_sec + (1 - alpha) * low_passed_pv_r;

    dErrorL = low_passed_pv_l;
    dErrorR = low_passed_pv_r;

    // 5: Calculate Integral Error
    // 5a: Calculate Error
    iErrorL += ErrorL * dT_sec;
    iErrorR += ErrorR * dT_sec;

    // 5b: Perform clamping
    // TODO: make clamping a parameter
    float i_clamp = 255;
    iErrorL = min(i_clamp, max(-i_clamp, iErrorL));
    iErrorR = min(i_clamp, max(-i_clamp, iErrorR));

    // 6: Sum P, I and D terms
    float feedback_left = P_l * ErrorL + D_l * dErrorL + I_l * iErrorL;
    float feedback_right = P_r * ErrorR + D_r * dErrorR + I_r * iErrorR;

    // 7: Calculate feedforward
    // TODO: Make Kv a parameter
    float Kv_left = 30.511;
    float Kv_right = 31.476;

    float feedforward_left = Kv_left * desiredSpeedL;
    float feedforward_right = Kv_right * desiredSpeedR;

    // Apparently motor commands are inverted somehow
    PWM_L = -static_cast<int>(round(feedforward_left + feedback_left));
    PWM_R = -static_cast<int>(round(feedforward_right + feedback_right));

    // Map from 1 - 127, since 0 causes both motors to stop
    PWM_L = min(63, max(-63, PWM_L)) + 64;
    PWM_R = min(63, max(-63, PWM_R)) + 64;

    // 8: Deadband
    if (abs(actualSpeedL) < 0.16 && abs(desiredSpeedL) < 0.16) {
        PWM_L = 64;
    }

    if (abs(actualSpeedR) < 0.16 && abs(desiredSpeedR) < 0.16) {
        PWM_R = 64;
    }

    setSpeeds({static_cast<unsigned char>(PWM_L), static_cast<unsigned char>(PWM_R)});

    /*
        Be aware that this motor board does not interface with the motor
        controller with PWM. "PWM" here are mere residue from old arduino code
        -255 to 255 values are handled in motor.cpp file, mapped to 0 to 127.
    */

    lastErrorL = ErrorL;
    lastErrorR = ErrorR;
    actual_speed_last_l = actualSpeedL;
    actual_speed_last_r = actualSpeedR;
}

void bothMotorStop() {
    serial.putc(0);
}


/**
 * Sets speed for both motors. Right motor is 0 - 127, Left motor is 128 - 255
 * @param c
 */
void setSpeeds(SpeedPair speed) {
    // Right motor
    serial.putc(speed.right);

    // Left motor
    serial.putc(static_cast<char>(128) + speed.left);
}
