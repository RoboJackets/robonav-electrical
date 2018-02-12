#include "testBench.h"

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