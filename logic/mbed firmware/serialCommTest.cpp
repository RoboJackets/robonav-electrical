// This file is not included in the makefile for project, solely for debugging purpose
#include <iostream>
#include <string>
#include <math.h>
using namespace std;

int desiredSpeedL;
int desiredSpeedR;

float D_l;
float D_r;
float P_l;
float P_r;
float parseFloat(int, int, char*);
void parseNonMotor(char*);
int main() {
    char smd[] = "$D11.23,13.23";
    parseNonMotor(smd);
    cout << "D Value " << D_l << " " << D_r << endl;
    cout << "P Value " << P_l << " " << P_r << endl;
}

float parseFloat(int preStart, int decimalPoint, char *cmd)
{
    float result = 0;

    for (int i = decimalPoint - 1, j = 0; i > preStart; i--, j++)
    {
        result += (int)(cmd[i] - 48) * pow(10, j);
    }

    for (int i = decimalPoint + 1; i < decimalPoint + 3 && cmd[i] != ',' && cmd[i] != 0; i++)
    {
        result += (float)((int)(cmd[i] - 48)) * (1 / (float)(pow(10, i - decimalPoint)));
    }

    return result;
}

void parseNonMotor(char *cmd)
{
    int dotIndex[2];
    int dotCount = 0;
    int commaIndex = 0;
    int commaCount = 0;

    for (int i = 0; i < 16; i++)
    {
        if (cmd[i] == '.')
        {
            dotIndex[dotCount] = i;
            dotCount++;
        }

        if (cmd[i] == ',')
        {
            commaIndex = i;
            commaCount++;
        }

        if (dotCount == 2 && commaCount == 1)
        {
            i = 25;
        }
    }

    float val1 = parseFloat(1, dotIndex[0], cmd);
    float val2 = parseFloat(commaIndex, dotIndex[1], cmd);

    switch (cmd[1])
    {
    case 'P':
        P_l = val1;
        P_r = val2;
        break;
    case 'D':
        D_l = val1;
        D_r = val2;
        break;
    default:
        cout << "#EFormat Error from mbed Parse Command" << endl;
    }
}
