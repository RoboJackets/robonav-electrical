#include "mbed.h"
#include "globals.h"
#include "motor.h"
#include "testBench.h"

Serial saberToothMC(p13,NC);
USBSerial serialNUC;
DigitalOut myLED1(LED1);
DigitalOut myLED2(LED2);
DigitalOut myLED3(LED3);
DigitalOut myLED4(LED4);
DigitalOut boardLED(p8);

int main(){
    saberToothMC.baud(38400);
}
