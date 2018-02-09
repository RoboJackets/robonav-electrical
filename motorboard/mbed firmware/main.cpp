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

void parseCommand(string);
void testSerial();

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
char buffer[10];

int main(){
    wait(1);
    saberToothMC.baud(38400);
    serialNUC.printf("ready\n");
    t.reset();
    bool gotCommand = false;
    t.start();
    // while(true){
    //     testSerial();
    // }

    while(true){
        while (serialNUC.available()) {
            if(serialNUC.readable()) {
                serialNUC.scanf("%s",&buffer);
                if(buffer[0] == '~') {
                    // serialNUC.printf("Message: %s %s\n",buffer, string(buffer));
                } else {
                    msg = string(buffer);
                    serialNUC.printf("%s\n",msg);
                    parseCommand(msg);
                    gotCommand = true;
                    lastCmdTime = t.read_ms();
                }
                serialNUC.printf("left: %d, right: %d\n",desiredSpeedL,desiredSpeedR);
            }
        }
    }

    // if (gotCommand) {
    //     serialNUC.printf("$%s,%s,$d\n",actualSpeedL,actualSpeedR,dT_sec);
    // }

    // if (t.read_ms() - lastCmdTime > 500) {
    //     serialNUC.printf("TIMEOUT");
    // }

    // meow.setLeftSpeed(leftSpeed);
    // meow.setRightSpeed(rightSpeed);
}

void parseCommand(string cmd) {
    int commaIndex = cmd.find(",");
    int dolrIndex = cmd.find("$");
    if (commaIndex == -1 || dolrIndex == -1) {
        serialNUC.printf("Invalid Command Format\n");
    }

    desiredSpeedL = atoi(cmd.substr(1,commaIndex - 1).c_str());
    desiredSpeedR = atoi(cmd.substr(commaIndex + 1).c_str());
}

void testSerial() {
    myLED1 = 0;
    while (serialNUC.available()){
        if(serialNUC.readable()) {
            serialNUC.scanf("%s",&buffer);
            if(buffer[0] != '~') {
                serialNUC.printf("Message: %s %s\n",buffer, string(buffer));
            }
        }
    }
}
