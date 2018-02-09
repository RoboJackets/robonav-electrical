#include "globals.h"

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
    int leftSpeed;
    int rightSpeed;
};