// #include "mbed.h"

// Serial serial(p13, NC);

// int main() {
//     serial.putc(0);
//     // serial.putc(255);
// }

// #define _GLIBCXX_USE_C99 1
#include "mbed.h"
// #include "motor.h"
#include "USBSerial.h"
// #include "MPU9250.h"
#include <string>
#define DEBUG false
#define TIMEOUT true

// Hardware definition
USBSerial serialNUC(0x1f00, 0x2012, 0x0001, true);
// MPU9250 imu;
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
float parseSpeed(char *, short *);
void tickLeft();
void tickRight();
void pidLoop();
void pid();
float parseFloat(int, int, char *);
void parseP(char *);
void parseD(char *);
void parseNonMotor(char *);

void setLeftSpeed(int);
void setRightSpeed(int);
void bothMotorStop();

// Serial Comm
long lastCmdTime = 0;
int lastLoopTime = 0;
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

int main()
{
    wait(0.5);
    myLED1 = 1;

    // Program started
    encoderLeftPinA.rise(&tickLeft);
    // encoderLeftPinA.fall(&tickLeft);
    encoderRightPinA.rise(&tickRight);
    // encoderRightPinA.fall(&tickRight);
    timer.reset();
    timer.start();
    wait(0.5);
    // mebug = 1;
    // serial.putc(255);
    // serial.putc(127);
    // wait(5);
    // serial.putc(0);
    myLED1 = 0;

    while (true)
    {
        if (serialNUC.readable())
        {
            serialNUC.scanf("%s", &buffer);
            commandType = buffer[0];

            if (commandType == '$')
            {
                parseCommand((char *)buffer);
                gotCommand = true;
                lastCmdTime = timer.read_ms();
                if (DEBUG)
                {
                    serialNUC.printf("Debug: Motor cmd Recognized\r\n");
                    serialNUC.printf("Echo Left %f, Right %f\r\n", desiredSpeedL, desiredSpeedR);
                }
            }
            else if (commandType == '#')
            {
                nonMotorCommand = true;
                if (DEBUG)
                {
                    serialNUC.printf("Debug: NonMotor cmd Recognized\r\n");
                }
            }

            if (nonMotorCommand)
            {
                switch (buffer[1])
                {
                case 'L':
                    // This is for Estop Light Pattern … nothing to do with actual Estop Status
                    eStopOutput = (int)((int)(buffer[2]) - 48);
                    eStopLight = (eStopOutput == 1) ? 1 : 0;
                    if (DEBUG)
                        serialNUC.printf("Debug: E Stop Light cmd: %d\n", eStopOutput);
                    break;
                case 'P':
                    parseNonMotor((char *)buffer);
                    serialNUC.printf("#P%2.2f,%2.2f\r\n", P_l, P_r);
                    break;
                case 'D':
                    parseNonMotor((char *)buffer);
                    serialNUC.printf("#D%2.2f,%2.2f\r\n", D_l, D_r);
                    break;
                case 'I':
                    parseNonMotor((char *)buffer);
                    serialNUC.printf("#I%2.2f,%2.2f\r\n", I_l, I_r);
                    break;
                default:
                    serialNUC.printf("#EInvalid Command\r\n");
                }
                nonMotorCommand = false;
            }
        }

        if (!TIMEOUT)
        {
            if (timer.read_ms() - lastCmdTime > 500)
            {
                serialNUC.printf("#ETIMEOUT\r\n");
                desiredSpeedL = 0;
                desiredSpeedR = 0;
                PWM_L = 0;
                PWM_R = 0;
                bothMotorStop();
            }
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
        }
        else
        {
            estop = 1;
        }

        // desiredSpeedL = 1.0;
        // desiredSpeedR = 1.0;
        pid();

        // imu.readAccelData(accel);
        // imu.readGyroData(gyro);
        // imu.readMagData(magne);

        serialNUC.printf("$%1.2f,%1.2f,%1.3f\r\n", actualSpeedL, actualSpeedR, dT_sec);
        wait_ms(13);
        // serialNUC.printf("#I%f,%f,%f,%f,%f,%f,%f,%f,%f\n\r", accel[0], accel[1], accel[2],
        //  gyro[0], gyro[1], gyro[2], magne[0], magne[1], magne[2]);
        serialNUC.printf("#V%2.2f,%d\r\n", battery.read() * 3.3 * 521 / 51, estop);
        wait_ms(13);

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

float parseSpeed(char *cmd, short *index)
{
    short sign = 1;
    if (cmd[*index] == '-')
    {
        sign = -1;
        ++(*index);
    }
    float value = (float)cmd[*index] - 48; // converting char to units digit

    if (cmd[*index + 1] != '.')
    {
        serialNUC.printf("#EInvalid Format: speed must be float\n\r");
        *index += 3; // attempt to skip past invalid term
        return 0;
    }
    value += ((float)cmd[*index + 2] - 48) / 10; // converting char to tenths digit
    *index += 3;
    return sign * value;
}

float parseFloat(int preStart, int decimalPoint, char *cmd)
{
    float result = 0;

    for (int i = decimalPoint - 1, j = 0; i > preStart; i--, j++)
        result += (int)(cmd[i] - 48) * pow(10, j);

    for (int i = decimalPoint + 1; i < decimalPoint + 3 && cmd[i] != ',' && cmd[i] != 0; i++)
        result += (float)((int)(cmd[i] - 48)) * (1 / (float)(pow(10, i - decimalPoint)));

    return result;
}

void parseNonMotor(char *cmd)
{
    int dotIndex[2];
    int dotCount = 0;
    int commaIndex = 0;
    int commaCount = 0;

    for (int i = 0; i < 16; i++)
    {
        if (cmd[i] == '.')
        {
            dotIndex[dotCount] = i;
            dotCount++;
        }

        if (cmd[i] == ',')
        {
            commaIndex = i;
            commaCount++;
        }

        if (dotCount == 2 && commaCount == 1)
        {
            i = 25;
        }
    }

    float val1 = parseFloat(1, dotIndex[0], cmd);
    float val2 = parseFloat(commaIndex, dotIndex[1], cmd);
    switch (cmd[1])
    {
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
        serialNUC.printf("#EFormat Error from mbed Parse Command");
    }
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
    dT_sec = (float)(timer.read_ms() - lastLoopTime) / 1000.0;

    if (timer.read() >= 1700)
    {
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
    if (abs(actualSpeedL) < 0.16 && abs(desiredSpeedL) < 0.16)
    {
        PWM_L = 0;
    }
    if (abs(actualSpeedR) < 0.16 && abs(desiredSpeedR) < 0.16)
    {
        PWM_R = 0;
    }

    // PWM_L = 255;
    // PWM_R = 255;

    setLeftSpeed(PWM_L);
    setRightSpeed(PWM_R);


    // setLeftSpeed(desiredSpeedL / 2.17 * 255);
    // setRightSpeed(desiredSpeedR / 2.17 * 255);

    if (DEBUG)
    {
        serialNUC.printf("PWM_L: %d, PWM_R: %d\n", PWM_L, PWM_R);
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

void bothMotorStop()
{
    serial.putc(0);
}

void setLeftSpeed(int c)
{
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

void setRightSpeed(int c)
{
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
