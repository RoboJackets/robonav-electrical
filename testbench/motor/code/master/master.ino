#include <Wire.h>

const int rightDir = 19;
const int rSpeed = A8;
const int leftDir = 18;
const int lSpeed = A9;

const int led = 1;

const int lSelect = 67;
const int rSelect = 75;

const int OA1 = 60;
const int OA2 = 59;
const int OA3 = 58;
const int OA4 = 57;

const int OD1 = 26;
const int OD2 = 38;
const int OD3 = 39;
const int OD4 = 40;

boolean consistent = true;

double leftSpeed[11];
double rightSpeed[11];



boolean dirR[11];
boolean dirL[11];

const float wheelCirc = 1.092;
const float ticks = 6000;
const float ticksPerM = ticks / wheelCirc;
const float ticksPerMile = ticksPerM * 1609.34;
int desiredSpeedL[11] = {-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5};
int desiredSpeedR[11] = {-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5};

void setup() 
{
  Serial.begin(9600);
  Serial1.begin(9600);
  Wire.begin();
  
  pinMode(rightDir, INPUT);
  pinMode(rSpeed, INPUT);
  pinMode(leftDir, INPUT);
  pinMode(lSpeed, INPUT);

  pinMode(lSelect, OUTPUT);
  digitalWrite(lSelect, HIGH);
}

void loop() 
{
  for (int i = 0; i < 11; i ++)
  {
    if (desiredSpeedR[i] < 0)
    {
      digitalWrite(lSelect, LOW);
    }
    Wire.beginTransmission(7);
    Wire.write(2);
    Wire.endTransmission();
  
    Wire.beginTransmission(8);
    Wire.write(2);
    Wire.endTransmission();
  
    delay(1000);

    dirL[i] = digitalRead(leftDir);
    dirR[i] = digitalRead(rightDir);
    leftSpeed[i] = analogRead(lSpeed);
    rightSpeed[i] = analogRead(rSpeed);

    digitalWrite(lSelect, HIGH);
  }

  for (int i = 0; i < 11; i ++)
  {
    if (abs(leftSpeed[i] - desiredSpeedL[i]) >= 0.1)
    {
      consistent = false; 
    }
  }

  if (consistent)
  {
    digitalWrite(led, HIGH);
    delay(1000);
    digitalWrite(led, LOW);
    delay(1000);
  }
  else 
  {
    digitalWrite(led, HIGH);
    delay(100);
    digitalWrite(led, LOW);
    delay(100);
    digitalWrite(led, HIGH);
    delay(100);
    digitalWrite(led, LOW);
  }
}
