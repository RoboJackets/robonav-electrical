#include "motor.h"

Motor::Motor(Side _side) {
    this->motorSide = _side;
    Serial saberToothMC(p13,NC);
    setEncoder(_side);
    currentSpeed = 0;
    setSpeed(0);
}

void Motor::setSpeed(int _speed) {
    _speed += getMotorSide() == LEFT ? 64 : 192;
   saberToothMC.putc(_speed);
    currentSpeed = _speed;
}

int Motor::getSpeed() {
    return currentSpeed -= getMotorSide() == LEFT ? 64 : 192;
}

void Motor::stop() {
    if (getMotorSide() == LEFT) {
       saberToothMC.putc(64);
    } else {
       saberToothMC.putc(192);
    }
}

void Motor::setEncoder(Side _side) {
    encoderSide = _side;
}

Motor::Side Motor::getMotorSide(){
    return motorSide;
}

Motor::Side Motor::getEncoderSide(){
    return encoderSide;
}