#ifndef GLOBAL_H
#define GLOBAL_H

#include "mbed.h"
#include "USBSerial.h"

extern DigitalOut myLED1;
extern DigitalOut myLED2;
extern DigitalOut myLED3;
extern DigitalOut myLED4;
extern DigitalOut boardLED;
extern InterruptIn encoderLeftPinA;
extern DigitalIn encoderLeftPinB;
extern InterruptIn encoderRightPinA;
extern DigitalIn encoderRightPinB;

extern USBSerial serialNUC;
extern Serial saberToothMC;

extern const double wheelCircum;
extern const double gearRatio;
extern const int ticksPerRev;
extern const double metersPerTick;


#endif