// #define _GLIBCXX_USE_C99 1
#include "mbed.h"
#include "globals.h"
#include "motor.h"
#include <string>

Serial saberToothMC(p13,NC);
USBSerial serialNUC;
DigitalOut myLED1(LED1);
DigitalOut myLED2(LED2);
DigitalOut myLED3(LED3);
DigitalOut myLED4(LED4);
DigitalOut boardLED(p8);

void parseCommand(char*);

string msg;
long lastCmdTime = 0;
long lastLoopTime = 0;
float desiredSpeedL = 0;
float desiredSpeedR = 0;
float actualSpeedL = 0;
float actualSpeedR = 0;
float dT_sec = 0;
int leftSpeed = 0;
int rightSpeed = 0;

Timer t;
Motor meow;
uint8_t buffer[128];

int main(){
    myLED1 = 1;
    wait(1);
    saberToothMC.baud(38400);
    t.reset();
    bool gotCommand = false;
    t.start();

    serialNUC.printf("Ready");
    string str;
    while(true){
        myLED1 = 0;
        while (serialNUC.available()) {
            if(serialNUC.readable()) {
                serialNUC.scanf("%s",&buffer);
                if(buffer[0] == '~') {
                } else {
                    parseCommand((char*)buffer);
                    gotCommand = true;
                    lastCmdTime = t.read_ms();
                    serialNUC.printf("left: %f, right: %f\n\r",desiredSpeedL,desiredSpeedR);
                }
            }
        }

        if (gotCommand) {
            serialNUC.printf("$%f,%f,%f\n\r",actualSpeedL,actualSpeedR,dT_sec);
            gotCommand = false;
        }

        myLED1 = 1;
        wait(0.1);

    // if (t.read_ms() - lastCmdTime > 500) {
    //     serialNUC.printf("TIMEOUT");
    // }

        meow.setLeftSpeed(leftSpeed);
        meow.setRightSpeed(rightSpeed);
    }
}

void parseCommand(char* cmd) {
    if (cmd[0] != '$' || cmd[5] != ',' && cmd[4] != ',') {
        serialNUC.printf("Invalid Format\n\r");
    } else {
        if (cmd[1] == '-') {
            desiredSpeedL = (float) cmd[2] - 48 + ((float)cmd[4] - 48)/10;
            desiredSpeedL = 0 - desiredSpeedL;

            if (cmd[6] == '-'){
                desiredSpeedR = (float) cmd[7] - 48 + ((float)cmd[9] - 48)/10;
                desiredSpeedR = 0 - desiredSpeedR;
            } else {
                desiredSpeedR = (float) cmd[6] - 48 + ((float)cmd[8] - 48)/10;
            }

        } else {
            desiredSpeedL = (float) cmd[1] - 48 + ((float)cmd[3] - 48)/10;

            if (cmd[5] == '-'){
                desiredSpeedR = (float) cmd[6] - 48 + ((float)cmd[8] - 48)/10;
                desiredSpeedR = 0 - desiredSpeedR;
            } else {
                desiredSpeedR = (float) cmd[5] - 48 + ((float)cmd[7] - 48)/10;
            }
        }

    }
}
