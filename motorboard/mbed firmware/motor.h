#include "globals.h"
class Motor{
    enum Side {LEFT,RIGHT}_side;
    public:
    // Constructor
    Motor(Side);
    // ~Motor();
    void setSpeed(int); // -64 to 63;
    int getSpeed();
    void stop();
    void setEncoder(Side);
    Side getEncoderSide();
    Side getMotorSide();

    private:
    Side motorSide;
    Side encoderSide;
    int currentSpeed;
};