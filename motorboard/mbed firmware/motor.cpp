#include "motor.h"

Motor::Motor() {
    Serial saberToothMC(p13,NC);
    stop();
}
void Motor::setLeftSpeed(int speedL) {
    if (speedL > 127) {
        speedL = 127;
    } else if (speedL < 0) {
        speedL = 0;
    }
    saberToothMC.putc(speedL);
    leftSpeed = speedL;
}

int Motor::getLeftSpeed() {
    return leftSpeed;
}
void Motor::setRightSpeed(int speedR) {
    if (speedR > 127) {
        speedR = 127;
    } else if (speedR < 0) {
        speedR = 0;
    }
    speedR += 128;
    saberToothMC.putc(speedR);
    leftSpeed = speedR;
}

int Motor::getRightSpeed() {
    return rightSpeed;
}

void Motor::stop() {
    saberToothMC.putc(64);
    saberToothMC.putc(192);
}