#include "PWM.h"

const int encoderRightData1 = 3;
const int encoderRightData2 = 5;
const int encoderLeftData1 = 2;
const int encoderLeftData2 = 4;
const int rightForwardSpeed = 11; //BLi
const int rightBackwardSpeed = 6; //HLi
const int rightDisable = 8;
const int leftForwardSpeed = 10;
const int leftBackwardSpeed = 9;

volatile int tickDataRight = 0;
volatile int tickDataLeft = 0;

const float ticksPerRev = 48.0;
const float gearRatio = 32.0;
const float wheelCir = 1.092; // Meters
const float metersPerTick = wheelCir / (ticksPerRev * gearRatio);
const float DEADBAND = 2;

float desiredSpeedR = 0; // m/s
float desiredSpeedL = 0; // m/s
float actualSpeedR;
float actualSpeedL;

float lastErrorL;
float lastErrorR;

float P_l = 8;
float D_l = 0;
float P_r = 8;
float D_r = 0;

int PWM_L = 0;
int PWM_R = 0;

long lastLoopTime;
float dT_sec;

double buffer_r[5] = {};
double buffer_l[5] = {};
int index = 0;
double result_r = 0;
double result_l = 0;

int powerL = 0;

// Serial comm vars
#define uchar unsigned char
uchar cmd[4] = {
  0,0,0,0};
int numBytesIn = 0;
boolean cmdHasStarted = false;
long lastCmdTime;

/* TODO
 * 1 - fix deadband (maybe bigger?)
 * 2 - push command speed
 * 3 - fix timeout
 */


void setup()
{
  Serial.begin(9600);

  pinMode(encoderRightData1, INPUT);
  pinMode(encoderRightData2, INPUT);
  pinMode(encoderLeftData1,  INPUT);
  pinMode(encoderLeftData2,  INPUT);

  digitalWrite(encoderRightData1, HIGH);
  digitalWrite(encoderRightData2, HIGH);
  digitalWrite(encoderLeftData1,  HIGH);
  digitalWrite(encoderLeftData2,  HIGH);

  pinMode(rightForwardSpeed, OUTPUT);
  pinMode(rightBackwardSpeed, OUTPUT);
  pinMode(rightDisable, OUTPUT);
  pinMode(leftForwardSpeed, OUTPUT);
  pinMode(leftBackwardSpeed, OUTPUT);
  attachInterrupt(digitalPinToInterrupt(3), tickRight, CHANGE);
  attachInterrupt(digitalPinToInterrupt(2), tickLeft, CHANGE);

  delay(1000);

  lastCmdTime = millis();
  lastLoopTime = millis();
  dT_sec = millis();

  //setPwmFrequency(6,1);
  //setPwmFrequency(9,1);

  Serial.println();
  Serial.flush();
  Serial.println("Ready");
}

boolean gotCommand = false;

void loop()
{
  gotCommand = false;
  while(Serial.available())
  {
	if(Serial.read() == '$')
	{
	  desiredSpeedL = Serial.parseFloat();
	  desiredSpeedR = Serial.parseFloat();
	  lastCmdTime = millis();
	  gotCommand = true;
	}
  }
  if(gotCommand)
  {
	Serial.print('$');
	Serial.print(actualSpeedL);
	Serial.print(',');
	Serial.print(actualSpeedR);
	Serial.print(',');
	Serial.print(dT_sec);
	Serial.print('\n');
  }

  if( millis() - lastCmdTime > 500)
  {
	Serial.println("TIMEOUT");
	desiredSpeedL = 0;
	desiredSpeedR = 0;
	PWM_L = 0;
	PWM_R = 0;
  }

  dT_sec = (float)( millis() - lastLoopTime ) / 1000.0;
  lastLoopTime = millis();
  actualSpeedL = ( metersPerTick * tickDataLeft ) / dT_sec;
  actualSpeedR = ( metersPerTick * tickDataRight ) / dT_sec;

  tickDataLeft = 0;
  tickDataRight = 0;

  delay(50);

  float ErrorL = desiredSpeedL - actualSpeedL;
  float ErrorR = desiredSpeedR - actualSpeedR;

  float dErrorL = ErrorL - lastErrorL;
  float dErrorR = ErrorR - lastErrorR;

  int dPWM_L = (int)( P_l * ErrorL + D_l * dErrorL );
  int dPWM_R = (int)( P_r * ErrorR + D_r * dErrorR );

  PWM_L += dPWM_L;
  PWM_R += dPWM_R;

  PWM_L = min(255, max(-255, PWM_L) );
  PWM_R = min(255, max(-255, PWM_R) );

  // Deadband
  if( abs(PWM_L) < 0 )
	PWM_L = 0;
  if( abs(PWM_R) < 0 )
	PWM_R = 0;

  if(PWM_L < 0) {
	//pwmWrite(leftForwardSpeed, 0);
	//pwmWrite(leftBackwardSpeed, -PWM_L);
  } else {
	pwmWrite(leftForwardSpeed, PWM_L);
	//pwmWrite(leftBackwardSpeed, 0);
  }

  if(PWM_R < 0) {
	//pwmWrite(rightForwardSpeed, 0);
	//pwmWrite(rightBackwardSpeed, -PWM_R);
  } else {
	//pwmWrite(rightForwardSpeed, PWM_R);
	//pwmWrite(rightBackwardSpeed, 0);
  }
  
  lastErrorL = ErrorL;
  lastErrorR = ErrorR;
}

void tickRight()
{
  if (digitalRead(encoderRightData1) == digitalRead(encoderRightData2))
  {
	tickDataRight++;
  }
  else
  {
	tickDataRight--;
  }
}

void tickLeft()
{
  if (digitalRead(encoderLeftData1) == digitalRead(encoderLeftData2))
  {
	tickDataLeft++;
  }
  else
  {
	tickDataLeft--;
  }
}

