#include "motor.h"
#include "globals.h"

Motor::Motor() {
    // Serial saberToothMC(p13,NC); 
    stop();
}
// I will scale from -256 to 255 to 0 to 127
void Motor::setLeftSpeed(int speedL) {
    speedL = (speedL + 256) / 4;
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
    speedR = (speedR + 256) / 4;
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