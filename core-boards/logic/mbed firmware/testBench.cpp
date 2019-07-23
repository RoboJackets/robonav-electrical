#include "testBench.h"

/*
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
*/

void serialCheck()
{
    serialNUC.printf("Program Initiated");
    return;
}

void imuTempCheck() {
    serialNUC.printf("Initializing IMU\n\r");
    imu.initMPU9250();
    serialNUC.printf("Initialization complete\n\r");
    int count = 0;
    float tempValue;
    while (count < 50)
    {
        tempValue = imu.readTempData();
        tempValue = (tempValue) / 333.87f + 21.0f;
        serialNUC.printf("Temperature is %f\n\r", tempValue);
        wait(0.5);
        count++;
    }
    serialNUC.printf("Temp Check Complete\n\r");
}

void imuAcceCheck() {
    int count = 0;
    float acceleration[3];
    float accelBias[3];
    float gyroBias[3];
    float aRes = imu.getAres();
    imu.resetMPU9250(); // Reset registers to default in preparation for device calibration
    imu.calibrateMPU9250(gyroBias, accelBias);
    while (count < 50)
    {
        imu.readAccelData(&acceleration[0]);
        acceleration[0] = acceleration[0] * aRes - accelBias[0];
        acceleration[1] = acceleration[1] * aRes - accelBias[1];
        acceleration[2] = acceleration[2] * aRes - accelBias[2];
        serialNUC.printf("%f\t%f\t%f\n\r", acceleration[0], acceleration[1], acceleration[2]);
        count++;
        wait(0.5);
    }
    serialNUC.printf("Grav Check Complete\n\r");
}

void batteryVoltageCheck() {
    for (int i = 0; i < 50; i++) {
        serialNUC.printf("%f\n\r", battery.read());
        wait(0.5);
    }
}