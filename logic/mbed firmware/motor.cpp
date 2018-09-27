#include "motor.h"

Motor::Motor() {
    saberToothMC = new Serial(p13, NC);
    saberToothMC->baud(9600);
    stop();
}
// I will scale from -256 to 255 to 0 to 127
void Motor::setLeftSpeed(int speedL) {
    speedL = (speedL + 255) / 4 + 1;
    if (speedL > 127) {
        speedL = 127;
    } else if (speedL < 0) {
        speedL = 0;
    }
    speedL += 128;
    saberToothMC->putc(speedL);
    leftSpeed = speedL;
}

int Motor::getLeftSpeed() {
    return leftSpeed;
}
void Motor::setRightSpeed(int speedR) {
    speedR = (speedR + 255) / 4 + 1;
    if (speedR > 127) {
        speedR = 127;
    } else if (speedR < 1) {
        speedR = 1;
    }
    saberToothMC->putc(speedR);
    leftSpeed = speedR;
}

int Motor::getRightSpeed() {
    return rightSpeed;
}

void Motor::stop() {
    saberToothMC->putc(64);
    saberToothMC->putc(192);
}