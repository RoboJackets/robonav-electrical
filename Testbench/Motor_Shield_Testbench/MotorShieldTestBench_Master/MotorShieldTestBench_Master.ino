#include <Wire.h>

const int rightDir = 19;
const int rightSpeed = 20;
const int leftDir = 18;
const int leftSpeed = 21;

const int select = 42;

boolean dir = true;

const float wheelCirc = 1.092;
const float ticks = 6000;
const float ticksPerM = ticks / wheelCirc;
float desiredSpeed = 2;

float f = desiredSpeed * ticksPerM; 

void setup() 
{
  Serial.begin(9600);
  Serial1.begin(9600);
  Wire.begin();
  
  pinMode(rightDir, INPUT);
  pinMode(rightSpeed, INPUT);
  pinMode(leftDir, INPUT);
  pinMode(leftSpeed, INPUT);

}

void loop() 
{

}
