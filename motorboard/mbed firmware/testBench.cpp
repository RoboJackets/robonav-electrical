#include "testBench.h"
void testLED() {
    myLED1 = 1;
    myLED2 = 1;
    myLED3 = 1;
    myLED4 = 1;
    wait(0.5);
    boardLED = 1;
    wait(2);
    myLED1 = 0;
    myLED2 = 0;
    myLED3 = 0;
    myLED4 = 0;
    boardLED = 0;
};

void testSerial() {
    if (serialNUC.available()) {
        // serialNUC.printf("Serial Ready\n");
        boardLED = 1;
        serialNUC.printf("mbed Serial echo: %s\n", serialNUC._getc());
        boardLED = 0;
    } else {
        for (int i = 0; i < 100; i++) {
            boardLED = 1;
            wait(0.5);
            boardLED = 0;
            wait(0.5);
        }
    }
}

void testMotor() {

}

void testEncoder() {
    
}
