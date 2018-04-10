#include <iostream>
#include <math.h>
#include <fstream>
using namespace std;

int dT_sec = 50;
double desiredSpeedL = 1.2;
double desiredSpeedR = 1.2;
double actualSpeedL = 0.0;
double actualSpeedR = 0.0;

double ErrorL = 0;
double ErrorR = 0;
double dErrorL = 0;
double dErrorR = 0;
double lastErrorL = 0;
double lastErrorR = 0;

int P_l = 8;
int P_r = 8;
int D_l = 16;
int D_r = 16;

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
    cout << "actualspeedL: " << actualSpeedL << endl;
    actualSpeedR = speedR();
    cout << "actualspeedR: " << actualSpeedR << endl;

    ErrorL = desiredSpeedL - actualSpeedL;
    ErrorR = desiredSpeedR - actualSpeedR;
    cout << "ErrorL: " << ErrorL << endl;
    cout << "ErrorR: " << ErrorR << endl;

    // serialNUC.printf("ErrorL: %1.2f, ErrorR: %1.2f \r\n", ErrorL, ErrorR);

    dErrorL = ErrorL - lastErrorL;
    dErrorR = ErrorR - lastErrorR;
    cout << "dErrorL: " << dErrorL << endl;
    cout << "dErrorR: " << dErrorR << endl;

    dPWM_L = (int)ceil((P_l * ErrorL + D_l * dErrorL));
    dPWM_R = (int)ceil((P_r * ErrorR + D_r * dErrorR));
    cout << "dPWM_L: " << dPWM_L << endl;
    cout << "dPWM_R: " << dPWM_R << endl;

    // serialNUC.printf("dpwmL: %d, dpwmR:%d \r\n",dPWM_L, dPWM_R);

    PWM_L += dPWM_L;
    PWM_R += dPWM_R;
    

    PWM_L = min(255, max(-255, PWM_L));
    PWM_R = min(255, max(-255, PWM_R));

    // cout << "Left Speed: " << actualSpeedL << "Right Speed: " << actualSpeedR << endl;

    lastErrorL = ErrorL;
    lastErrorR = ErrorR;

    cout << "EoC" << endl;
    // EoC as end of one cycle
}

double speedL() {
    return ((double)PWM_L) / 255.0 * 2.17 + 0.9 * actualSpeedL;
}

double speedR() {
    return ((double)PWM_R) / 255.0 * 2.17 + 0.9 * actualSpeedR;
}