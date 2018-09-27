#include <iostream>
#include <math.h>
#include <fstream>
using namespace std;

double dT_sec = 0.05;
double desiredSpeedL = 1.2;
double desiredSpeedR = 1.2;
double actualSpeedL = 0.0;
double actualSpeedR = 0.0;

double ErrorL = 0;
double ErrorR = 0;
double dErrorL = 0;
double dErrorR = 0;
double iErrorL = 0;
double iErrorR = 0;
double lastErrorL = 0;
double lastErrorR = 0;

int P_l = 6;
int P_r = 6;
int D_l = 16;
int D_r = 16;
int I_l = 0;
int I_r = 0;

int PWM_L = 0;
int PWM_R = 0;
int dPWM_L = 0;
int dPWM_R = 0;

void pid();
double speedL();
double speedR();

int main() {
    ofstream myfile;
    myfile.open("Output.txt");
    myfile << "Left V\tRight V" << endl;
    int i = 0;
    for (i = 0; i < 80; i++) {
        pid();
        myfile << i << "\t" << actualSpeedL << endl;
    }
    desiredSpeedL = 0.5;
    desiredSpeedR = 0.5;
    for (; i < 160; i++)
    {
        pid();
        myfile << i << "\t" << actualSpeedL << endl;
    }
    myfile.close();
}

void pid() {

    actualSpeedL = speedL();
    actualSpeedR = speedR();

    ErrorL = desiredSpeedL - actualSpeedL;
    ErrorR = desiredSpeedR - actualSpeedR;

    // serialNUC.printf("ErrorL: %1.2f, ErrorR: %1.2f \r\n", ErrorL, ErrorR);

    dErrorL = ErrorL - lastErrorL;
    dErrorR = ErrorR - lastErrorR;

    iErrorL = ErrorL * dT_sec;
    iErrorR = ErrorR * dT_sec;

    dPWM_L = (int)ceil((P_l * ErrorL + D_l * dErrorL + I_l * iErrorL));
    dPWM_R = (int)ceil((P_r * ErrorR + D_r * dErrorR + I_r * iErrorR));

    // serialNUC.printf("dpwmL: %d, dpwmR:%d \r\n",dPWM_L, dPWM_R);

    PWM_L += dPWM_L;
    PWM_R += dPWM_R;

    PWM_L = min(255, max(-255, PWM_L));
    PWM_R = min(255, max(-255, PWM_R));

    // cout << "Left Speed: " << actualSpeedL << "Right Speed: " << actualSpeedR << endl;

    lastErrorL = ErrorL;
    lastErrorR = ErrorR;
    
    // EoC as end of one cycle
}

double speedL() {
    return ((double)PWM_L) / 255.0 * 2.17 + 0.9 * actualSpeedL;
}

double speedR() {
    return ((double)PWM_R) / 255.0 * 2.17 + 0.9 * actualSpeedR;
}