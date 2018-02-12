#include <iostream>
#include <string>
using namespace std;

int desiredSpeedL;
int desiredSpeedR;
void parseCommand(string);
int main() {
    string smd;
    cin >> smd;
    parseCommand(smd);
    cout << desiredSpeedL << " " << desiredSpeedR << endl;
}

void parseCommand(string cmd) {
    int commaIndex = cmd.find(",");
    int dolrIndex = cmd.find("$");
    if (commaIndex == -1 || dolrIndex == -1) {
        // serialNUC.printf("Invalid Command Format\n");
        cout << "Invalid Command Format" << endl;
    }

    desiredSpeedL = atoi(cmd.substr(1,commaIndex - 1).c_str());
    desiredSpeedR = atoi(cmd.substr(commaIndex + 1).c_str());
}