// #include "globals.h"
#include "mbed.h"

class Motor{
    public:
    // Constructor
    Motor();
    // ~Motor();
    void setLeftSpeed(int); // -64 to 63;
    int getLeftSpeed();
    void setRightSpeed(int); // -64 to 63;
    int getRightSpeed();
    void stop();

    private:
    Serial* saberToothMC;
    int leftSpeed;
    int rightSpeed;
};