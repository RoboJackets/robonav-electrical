#include "mbed.h"

DigitalOut myLED1(LED1);
DigitalOut myLED2(LED2);
DigitalOut myLED3(LED3);
DigitalOut myLED4(LED4);
DigitalOut boardLED(p8);
Serial saberToothMC(p13,NC);

void testLED();
void casuallyStartMotor();
void stopMotor();

int main(){
    saberToothMC.baud(38400);
    // Verify the mbed is working

    testLED();
    // 0 to 127 for Motor 1; 0 as full reverse, 64 stop, 127 full forward
    // 128 to 255 for Motor 2; 0, 192, 255;
    casuallyStartMotor();
    wait(1);
    stopMotor();
    testLED();
}


void testLED(){
    // mbed LEDs
    myLED1 = 1;
    myLED2 = 1;
    myLED3 = 1;
    myLED4 = 1;
    // onboard LED
    boardLED = 1;
    wait(0.5);

    myLED1 = 0;
    myLED2 = 0;
    myLED3 = 0;
    myLED4 = 0;
    // onboard LED
    boardLED = 0;
}

void casuallyStartMotor(){
    saberToothMC.putc(96);
    saberToothMC.putc(224);
}

void stopMotor(){
    saberToothMC.putc(64);
    saberToothMC.putc(192);
}