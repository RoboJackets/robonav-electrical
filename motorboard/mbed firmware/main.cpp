// #define _GLIBCXX_USE_C99 1
#include "mbed.h"
#include "globals.h"
#include "motor.h"
#include "testBench.h"
#include "MPU9250.h"
#include <string>

// Light shield stuff, estop

// Hardware definition
Serial saberToothMC(p13, NC);
USBSerial serialNUC;
I2C i2c(I2C_SDA1, I2C_SCL1);
MPU9250 imu(5);
Timer timer;
Motor motor;

// mbed Pin definition
DigitalOut myLED1(LED1);
DigitalOut myLED2(LED2);
DigitalOut myLED3(LED3);
DigitalOut myLED4(LED4);
DigitalOut boardLED(p8);
DigitalOut eStopLight(p12);
DigitalIn eStopStatus(p18);
InterruptIn encoderLeftPinA(p26);
DigitalIn encoderLeftPinB(p25);
InterruptIn encoderRightPinA(p28);
DigitalIn encoderRightPinB(p27);
AnalogIn battery(p20);

// function prototypes
void parseCommand(char*);
float parseSpeed(char*, short*);
void tickLeft();
void tickRight();
void pidLoop();
void parsePID(char*);
void pid();
float parseFloat(int,int,char*);

// Serial Comm
long lastCmdTime = 0;
long lastLoopTime = 0;
uint8_t buffer[128];

// PID variable definition
float desiredSpeedL = 0;
float desiredSpeedR = 0;
float actualSpeedL = 0;
float actualSpeedR = 0;
float ErrorL = 0;
float ErrorR = 0;
float dErrorL = 0;
float dErrorR = 0;
float dT_sec = 0;
float lastErrorL;
float lastErrorR;
float P_l = 8;
float D_l = 0;
float P_r = 8;
float D_r = 0;
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
const double metersPerTick = wheelCircum * (ticksPerRev * gearRatio);

bool gotCommand = false;
bool nonMotorCommand = false;
int estop = 1;
char commandType;

int main()
{
    wait(0.5);
    myLED1 = 1;
    // Program started
    saberToothMC.baud(38400);
    encoderLeftPinA.rise(&tickLeft);
    encoderLeftPinA.fall(&tickLeft);
    encoderRightPinA.rise(&tickRight);
    encoderRightPinA.fall(&tickRight);
    timer.reset();
    timer.start();
    wait(0.5);
    myLED1 = 0;

    while (true) {
        while (serialNUC.available()) {
            if (serialNUC.readable()) {
                serialNUC.scanf("%s", &buffer);
                commandType = buffer[0];

                if (commandType == '$') {
                    parseCommand((char *)buffer);
                    gotCommand = true;
                    lastCmdTime = timer.read_ms();
                    serialNUC.printf("Debug: Motor cmd Recognized\n\r");
                    serialNUC.printf("Echo Left %f, Right %f\n\r", desiredSpeedL, desiredSpeedR);
                } else if (commandType == '#') {
                    nonMotorCommand = true;
                    serialNUC.printf("Debug: NonMotor cmd Recognized\n\r");
                }

                if (nonMotorCommand)
                {
                    switch (buffer[1])
                    {
                    case 'L':
                        eStopOutput = (int)((int)(buffer[2]) - 48);
                        eStopLight = (eStopOutput == 1) ? 1 : 0;
                        serialNUC.printf("Debug: E Stop cmd: %d\n\r", eStopOutput);
                        break;
                    case 'P':
                        parsePID((char*)buffer);
                        serialNUC.printf("#P%f,%f,%f,%f\n\r",P_l,D_l,P_r,D_r);
                        break;
                    default:
                        serialNUC.printf("#ENo Matching Command Type\n\r");
                    }
                    nonMotorCommand = false;
                }
            }

        

        // if (timer.read_ms() - lastCmdTime > 500) {
        //     serialNUC.printf("#ETIMEOUT\n\r");
        //     desiredSpeedL = 0;
        //     desiredSpeedR = 0;
        //     PWM_L = 0;
        //     PWM_R = 0;
        // }

        // State Machine for Estop
        if (eStopStatus.read() == 1) {
            desiredSpeedL = 0;
            desiredSpeedR = 0;
            if (estop == 1) {
                estop = 0;
            }
        } else if (eStopStatus.read() == 0 && estop == 0) {
            estop = 1; 
            // Estop = 1 = enabled
        }

        pid();

        imu.readAccelData(accel);
        imu.readGyroData(gyro);
        imu.readMagData(magne);
        
        serialNUC.printf("$%f,%f,%f,%d\n\r", actualSpeedL, actualSpeedR, dT_sec, 1);
        serialNUC.printf("#I%f,%f,%f,%f,%f,%f,%f,%f,%f\n\r", accel[0], accel[1], accel[2],
                         gyro[0], gyro[1], gyro[2], magne[0], magne[1], magne[2]);
        serialNUC.printf("#V%f\n\r",battery.read() * 3.3 * 521 / 51);
        }
    }
}

void parseCommand(char *cmd)
{
    short index = 0;
    if (cmd[index] != '$')
    {
      serialNUC.printf("Invalid Format: cmd must start with '$'\n\r");
      return;
    }
    ++index;

    desiredSpeedL = parseSpeed(cmd, &index);

    if (cmd[index] != ',')
    {
      serialNUC.printf("Invalid Format: values must be comma-separated\n\r");
      return;
    }
    ++index;

    desiredSpeedR = parseSpeed(cmd, &index);
}

float parseSpeed(char* cmd, short* index)
{
    short sign = 1;
    if (cmd[*index] == '-')
    {
      sign = -1;
      ++(*index);
    }
    float value = (float) cmd[*index] - 48; // converting char to units digit

    if (cmd[*index + 1] != '.')
    {
      serialNUC.printf("Invalid Format: speed must be float\n\r");
      *index += 3; // attempt to skip past invalid term
      return 0;
    }
    value += ((float) cmd[*index + 2] - 48) / 10; // converting char to tenths digit
    *index += 3;
    return sign * value;
}

void parsePID(char *cmd) {
    int dotIndex[4];
    int dot = 0;
    int commaIndex[4];
    commaIndex[0] = 1;
    int comma = 1;
    // Find location of ',' and '.'
    for (int i = 0; i < 128; i++) {
        if (cmd[i] == ',') {
            commaIndex[comma] = i;
            ++comma;
        } 

        if (cmd[i] == '.') {
            dotIndex[dot] = i;
            ++dot;
        }

        if (dot == 3 && comma == 2) {
            i = 130;
        }
    }

    serialNUC.printf("Comma Index: %d,%d,%d,%d\n\r", commaIndex[0], commaIndex[1], commaIndex[2], commaIndex[3]);
    serialNUC.printf("dot Index: %d,%d,%d,%d\n\r", dotIndex[0], dotIndex[1], dotIndex[2], dotIndex[3]);

    P_l = parseFloat(commaIndex[0], dotIndex[0], cmd);
    D_l = parseFloat(commaIndex[1], dotIndex[1], cmd);
    P_r = parseFloat(commaIndex[2], dotIndex[2], cmd);
    D_r = parseFloat(commaIndex[3], dotIndex[3], cmd);

}

float parseFloat(int preStart, int decimalPoint, char* cmd) {
    float result = 0;
    
    for (int i = decimalPoint - 1, j = 0; i > preStart; i--, j++) {
        result += (int)(cmd[i] - 48) * pow(10,j);
    }

    for (int i = decimalPoint + 1; i < decimalPoint + 3 && cmd[i] != 44 && cmd[i] != 0; i++)
    {
        result += (float)((int)(cmd[i] - 48)) * (1 / (float)(pow(10, i - decimalPoint)));
    }

    return result;
}

void tickRight()
{
    if (encoderRightPinA.read() == encoderRightPinB.read())
    {
        ++tickDataRight;
    }
    else
    {
        --tickDataRight;
    }
}

void tickLeft()
{
    if (encoderLeftPinA.read() == encoderLeftPinB.read())
    {
        ++tickDataLeft;
    }
    else
    {
        --tickDataLeft;
    }
}

void pid()
{

    // if (gotCommand) {
    //     serialNUC.printf("#%f,%f,%f\n\r", actualSpeedL, actualSpeedR, dT_sec);
    //     gotCommand = false;
    // }
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

    wait_ms(50);

    ErrorL = desiredSpeedL - actualSpeedL;
    ErrorR = desiredSpeedR - actualSpeedR;

    dErrorL = ErrorL - lastErrorL;
    dErrorR = ErrorR - lastErrorR;

    dPWM_L = (int)(P_l * ErrorL + D_l * dErrorL);
    dPWM_R = (int)(P_r * ErrorR + D_r * dErrorR);

    PWM_L += dPWM_L;
    PWM_R += dPWM_R;

    PWM_L = min(255, max(-255, PWM_L));
    PWM_R = min(255, max(-255, PWM_R));

    // Deadband
    if (abs(PWM_L) < 0.15)
        PWM_L = 0;
    if (abs(PWM_R) < 0.15)
        PWM_R = 0;

    motor.setLeftSpeed(PWM_L);
    motor.setRightSpeed(PWM_R);

    /* 
        Be aware that this motor board does not interface with the motor 
        controller with PWM. "PWM" here are mere residue from old arduino code
        -255 to 255 values are handled in motor.cpp file, mapped to 0 to 127.
        */

    lastErrorL = ErrorL;
    lastErrorR = ErrorR;
}

/*
void pidLoop() {

    while (true) // PID and loop
    {
        myLED1 = 0;
        while (serialNUC.available())
        {
            if (serialNUC.readable())
            {
                serialNUC.scanf("%s", &buffer);
                if (buffer[0] != '~')
                {
                    parseCommand((char *)buffer);
                    gotCommand = true;
                    lastCmdTime = timer.read_ms();
                    serialNUC.printf("left: %f, right: %f\n\r", desiredSpeedL, desiredSpeedR);
                }
            }
        }

        if (gotCommand)
        {
            serialNUC.printf("$%f,%f,%f\n\r", actualSpeedL, actualSpeedR, dT_sec);
            // gotCommand = false;
        }

        if (timer.read_ms() - lastCmdTime > 500)
        {
            serialNUC.printf("TIMEOUT");
            desiredSpeedL = 0;
            desiredSpeedR = 0;
            PWM_L = 0;
            PWM_R = 0;
        }

        dT_sec = (float)(timer.read_ms() - lastLoopTime) / 1000.0;
        lastLoopTime = timer.read_ms();
        actualSpeedL = (metersPerTick * tickDataLeft) / dT_sec;
        actualSpeedR = (metersPerTick * tickDataRight) / dT_sec;

        tickDataLeft = 0;
        tickDataRight = 0;

        wait_ms(50);

        ErrorL = desiredSpeedL - actualSpeedL;
        ErrorR = desiredSpeedR - actualSpeedR;

        dErrorL = ErrorL - lastErrorL;
        dErrorR = ErrorR - lastErrorR;

        dPWM_L = (int)(P_l * ErrorL + D_l * dErrorL);
        dPWM_R = (int)(P_r * ErrorR + D_r * dErrorR);

        PWM_L += dPWM_L;
        PWM_R += dPWM_R;

        PWM_L = min(255, max(-255, PWM_L));
        PWM_R = min(255, max(-255, PWM_R));

        // Deadband
        if (abs(PWM_L) < 0.15)
        {
            PWM_L = 0;
        }
        if (abs(PWM_R) < 0.15)
        {
            PWM_R = 0;
        }

        motor.setLeftSpeed(PWM_L);
        motor.setRightSpeed(PWM_R);

        lastErrorL = ErrorL;
        lastErrorR = ErrorR;
    }
}
*/