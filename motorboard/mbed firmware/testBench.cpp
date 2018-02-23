#include "testBench.h"
#include "globals.h"

void encoderCheck()
{
    // bool LEA = encoderLeftPinA.is_connected();
    bool LEB = encoderLeftPinB.is_connected();
    // bool REA = encoderRightPinA.is_connected();
    bool REB = encoderRightPinB.is_connected();
    // if (!LEA) {
    //     serialNUC.printf("Left Encoder Channel A poor connection or disconnected\n\r");
    // }

    if (!LEB)
    {
        serialNUC.printf("Left Encoder poor connection or disconnected\n\r");
    }

    // if (!REA) {
    //     serialNUC.printf("Right Encoder Channel A poor connection or disconnected\n\r");
    // }

    if (!REB)
    {
        serialNUC.printf("Right Encoder poor connection or disconnected\n\r");
    }

    // if (LEA && LEB && REA && REB) {
    if (LEB && REB)
    {
        serialNUC.printf("Encoder ready\n\r");
    }
}

void serialCheck()
{
    // To be implemented
    return;
}

void imuTempCheck() {
    serialNUC.printf("Initializing IMU\n\r");
    imu.initMPU9250();
    serialNUC.printf("Initialization complete\n\r");
    int count = 0;
    while (count < 50)
    {
        int16_t tempValue = imu.readTempData();
        serialNUC.printf("Temperature is %d\n\r", tempValue);
        wait(0.5);
        count++;
    }
    serialNUC.printf("Temp Check Complete\n\r");
}

void imuAcceCheck() {
    int count = 0;
    int16_t acceleration[3];
    while (count < 50)
    {
        imu.readAccelData(&acceleration[0]);
        serialNUC.printf("%d\t%d\t%d\n\r", acceleration[0], acceleration[1], acceleration[2]);
        count++;
        wait(0.5);
    }
    serialNUC.printf("Temp Check Complete\n\r");
}