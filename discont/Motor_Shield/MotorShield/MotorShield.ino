const int encoderRightData1 = 3;
const int encoderRightData2 = 5;
const int encoderLeftData1 = 2;
const int encoderLeftData2 = 4;
const int rightDir = 7;
const int rightSpeed = 6;
const int rightDisable = 8;
const int leftDir = 10;
const int leftSpeed = 9;
const int leftDisable = 11;

volatile int tickDataRight = 0;
volatile int tickDataLeft = 0;

const float ticksPerRev = 200.0;
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

  pinMode(rightDir, OUTPUT);
  pinMode(rightSpeed, OUTPUT);
  pinMode(rightDisable, OUTPUT);
  pinMode(leftDir, OUTPUT);
  pinMode(leftSpeed, OUTPUT);
  pinMode(leftDisable, OUTPUT);
  attachInterrupt(1, tickRight, CHANGE);
  attachInterrupt(0, tickLeft, CHANGE);

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
      desiredSpeedL = -1*Serial.parseFloat();
      desiredSpeedR = -1*Serial.parseFloat();
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
  /*
  //Serial.println(tickDataLeft);
  if( millis() - lastCmdTime > 500)
  {
    Serial.println("TIMEOUT");
    desiredSpeedL = 0;
    desiredSpeedR = 0;
    PWM_L = 0;
    PWM_R = 0;
  }
  */
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
  PWM_R -= dPWM_R;

  PWM_L = min(255, max(-255, PWM_L) );
  PWM_R = min(255, max(-255, PWM_R) );
  
  // Deadband
  if( abs(PWM_L) < DEADBAND )
    PWM_L = 0;
  if( abs(PWM_R) < DEADBAND )
    PWM_R = 0;

  int dirL = PWM_L < 0;
  int dirR = PWM_R > 0;

  int powerL = dirL ? 255 + PWM_L : PWM_L;
  int powerR = dirR ? 255 - PWM_R : -PWM_R;
  
  if(desiredSpeedL == 0)
    PWM_L = 0;
  if(desiredSpeedR == 0)
    PWM_R = 0;
  
  digitalWrite(rightDir, dirR);
  digitalWrite(leftDir, dirL);
  analogWrite(rightSpeed, powerR);
  analogWrite(leftSpeed, powerL);
  
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

/**
 * Divides a given PWM pin frequency by a divisor.
 * 
 * The resulting frequency is equal to the base frequency divided by
 * the given divisor:
 *   - Base frequencies:
 *      o The base frequency for pins 3, 9, 10, and 11 is 31250 Hz.
 *      o The base frequency for pins 5 and 6 is 62500 Hz.
 *   - Divisors:
 *      o The divisors available on pins 5, 6, 9 and 10 are: 1, 8, 64,
 *        256, and 1024.
 *      o The divisors available on pins 3 and 11 are: 1, 8, 32, 64,
 *        128, 256, and 1024.
 * 
 * PWM frequencies are tied together in pairs of pins. If one in a
 * pair is changed, the other is also changed to match:
 *   - Pins 5 and 6 are paired on timer0
 *   - Pins 9 and 10 are paired on timer1
 *   - Pins 3 and 11 are paired on timer2
 * 
 * Note that this function will have side effects on anything else
 * that uses timers:
 *   - Changes on pins 3, 5, 6, or 11 may cause the delay() and
 *     millis() functions to stop working. Other timing-related
 *     functions may also be affected.
 *   - Changes on pins 9 or 10 will cause the Servo library to function
 *     incorrectly.
 * 
 * Thanks to macegr of the Arduino forums for his documentation of the
 * PWM frequency divisors. His post can be viewed at:
 *   http://forum.arduino.cc/index.php?topic=16612#msg121031
 */
void setPwmFrequency(int pin, int divisor) {
  byte mode;
  if(pin == 5 || pin == 6 || pin == 9 || pin == 10) {
    switch(divisor) {
      case 1: mode = 0x01; break;
      case 8: mode = 0x02; break;
      case 64: mode = 0x03; break;
      case 256: mode = 0x04; break;
      case 1024: mode = 0x05; break;
      default: return;
    }
    if(pin == 5 || pin == 6) {
      TCCR0B = TCCR0B & 0b11111000 | mode;
    } else {
      TCCR1B = TCCR1B & 0b11111000 | mode;
    }
  } else if(pin == 3 || pin == 11) {
    switch(divisor) {
      case 1: mode = 0x01; break;
      case 8: mode = 0x02; break;
      case 32: mode = 0x03; break;
      case 64: mode = 0x04; break;
      case 128: mode = 0x05; break;
      case 256: mode = 0x06; break;
      case 1024: mode = 0x07; break;
      default: return;
    }
    TCCR2B = TCCR2B & 0b11111000 | mode;
  }
}
