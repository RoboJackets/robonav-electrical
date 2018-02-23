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
Timer t;
Motor meow;

DigitalOut myLED1(LED1);
DigitalOut myLED2(LED2);
DigitalOut myLED3(LED3);
DigitalOut myLED4(LED4);
DigitalOut boardLED(p8);
InterruptIn encoderLeftPinA(p26);
DigitalIn encoderLeftPinB(p25);
InterruptIn encoderRightPinA(p28);
DigitalIn encoderRightPinB(p27);

// function prototypes
void parseCommand(char *);
void tickLeft();
void tickRight();
void pidLoop();

// Serial Comm time
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
int dPWM_L = 0;
int dPWM_R = 0;
int PWM_L = 0;
int PWM_R = 0;

// Encoder values
volatile int tickDataRight = 0;
volatile int tickDataLeft = 0;

// Constant Definition
const double wheelCircum = 1.092;
const double gearRatio = 32.0;
const int ticksPerRev = 48;
const double metersPerTick = wheelCircum * (ticksPerRev * gearRatio);

bool gotCommand = false;

int main()
{

    wait(0.5);
    myLED1 = 1;
    // Program started
    saberToothMC.baud(38400);
    wait(0.5);
    t.reset();
    encoderLeftPinA.rise(&tickLeft);
    encoderLeftPinA.fall(&tickLeft);
    encoderRightPinA.rise(&tickRight);
    encoderRightPinA.fall(&tickRight);
    t.start();
    myLED1 = 0;
    
    imuTempCheck();
    // pidLoop();

}

void parseCommand(char *cmd)
{
    if (cmd[0] != '$' || (cmd[5] != ',' && cmd[4] != ','))
    {
        serialNUC.printf("Invalid Format\n\r");
    }
    else
    {
        if (cmd[1] == '-')
        {
            desiredSpeedL = (float)cmd[2] - 48 + ((float)cmd[4] - 48) / 10;
            desiredSpeedL = 0 - desiredSpeedL;

            if (cmd[6] == '-')
            {
                desiredSpeedR = (float)cmd[7] - 48 + ((float)cmd[9] - 48) / 10;
                desiredSpeedR = 0 - desiredSpeedR;
            }
            else
            {
                desiredSpeedR = (float)cmd[6] - 48 + ((float)cmd[8] - 48) / 10;
            }
        }
        else
        {
            desiredSpeedL = (float)cmd[1] - 48 + ((float)cmd[3] - 48) / 10;

            if (cmd[5] == '-')
            {
                desiredSpeedR = (float)cmd[6] - 48 + ((float)cmd[8] - 48) / 10;
                desiredSpeedR = 0 - desiredSpeedR;
            }
            else
            {
                desiredSpeedR = (float)cmd[5] - 48 + ((float)cmd[7] - 48) / 10;
            }
        }
    }
}

void tickRight()
{
    if (encoderRightPinA.read() == encoderRightPinB.read())
        tickDataRight++;
    else
        tickDataRight--;
}

void tickLeft()
{
    if (encoderLeftPinA.read() == encoderLeftPinB.read())
        tickDataLeft++;
    else
        tickDataLeft--;
}

void pidLoop() {

    while (true) // PID and loop
    {
        myLED1 = 0;
        while (serialNUC.available())
        {
            if (serialNUC.readable())
            {
                serialNUC.scanf("%s", &buffer);
                if (buffer[0] == '~')
                {
                }
                else
                {
                    parseCommand((char *)buffer);
                    gotCommand = true;
                    lastCmdTime = t.read_ms();
                    serialNUC.printf("left: %f, right: %f\n\r", desiredSpeedL, desiredSpeedR);
                }
            }
        }

        if (gotCommand)
        {
            serialNUC.printf("$%f,%f,%f\n\r", actualSpeedL, actualSpeedR, dT_sec);
            // gotCommand = false;
        }

        if (t.read_ms() - lastCmdTime > 500)
        {
            serialNUC.printf("TIMEOUT");
            desiredSpeedL = 0;
            desiredSpeedR = 0;
            PWM_L = 0;
            PWM_R = 0;
        }

        dT_sec = (float)(t.read_ms() - lastLoopTime) / 1000.0;
        lastLoopTime = t.read_ms();
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

        // if(PWM_L < 0) {
        // analogWrite(leftForwardSpeed, 0);
        // analogWrite(leftBackwardSpeed, -PWM_L);
        // } else {
        // analogWrite(leftForwardSpeed, PWM_L);
        // analogWrite(leftBackwardSpeed, 0);
        // }

        // if(PWM_R < 0) {
        // analogWrite(rightForwardSpeed, 0);
        // analogWrite(rightBackwardSpeed, -PWM_R);
        // } else {
        // analogWrite(rightForwardSpeed, PWM_R);
        // analogWrite(rightBackwardSpeed, 0);
        // }

        meow.setLeftSpeed(PWM_L);
        meow.setRightSpeed(PWM_R);

        /* Be aware that this motor board does not interface with the motor 
        controller with PWM. "PWM" here are mere residue from old arduino code
        -255 to 255 values are handled in motor.cpp file, mapped to 0 to 127.
        */

        lastErrorL = ErrorL;
        lastErrorR = ErrorR;
    }
}