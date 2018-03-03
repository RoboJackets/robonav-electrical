#ifndef GLOBAL_H
#define GLOBAL_H

#include "mbed.h"
#include "USBSerial.h"
#include "MPU9250.h"

extern DigitalOut myLED1;
extern DigitalOut myLED2;
extern DigitalOut myLED3;
extern DigitalOut myLED4;
extern DigitalOut boardLED;
extern DigitalOut eStopLight;
extern DigitalIn eStopStatus;
extern AnalogIn battery;
extern InterruptIn encoderLeftPinA;
extern DigitalIn encoderLeftPinB;
extern InterruptIn encoderRightPinA;
extern DigitalIn encoderRightPinB;

extern USBSerial serialNUC;
extern Serial saberToothMC;
extern I2C i2c;
extern MPU9250 imu;


#endif