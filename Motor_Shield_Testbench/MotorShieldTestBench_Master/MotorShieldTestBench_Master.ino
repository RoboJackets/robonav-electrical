#include <Wire.h>

const int rightDir = 10;
const int rightSpeed = A2;
const int leftDir = 11;
const int leftSpeed = A1;
const int LED = 13;


const int select = 10;

boolean dir = true;

const float wheelCirc = 1.092;
const float ticks = 6000;
const float ticksPerM = ticks / wheelCirc;
float desiredSpeed = 2;

/*
if (desiredSpeed < 0)
{
  desiredSpeed = abs(desiredSpeed);
  dir = false;
}
*/

float f = desiredSpeed * ticksPerM; 

void setup() 
{
  Serial.begin(9600);
  Wire.begin();
  Wire.beginTransmission(8);
  Wire.write(char(f));
  Wire.endTransmission();
  
  
  pinMode(rightDir, INPUT);
  pinMode(rightSpeed, INPUT);
  pinMode(leftDir, INPUT);
  pinMode(leftSpeed, INPUT);

}

void loop() 
{

}
