// initialize encoder

#include<LiquidCrystal.h>
LiquidCrystal lcd(12,11,7,6,5,4);
#define encoderPinA 2
#define encoderPinB 3
float pi = 3.1415926;
int count = 0;
volatile int encoderCount = 0;
volatile float angle = 0;
volatile float velocity = 0;
volatile float angle_previous = 0;
volatile float angle_post = 0;

//initializing float values and int values.


// Timer

volatile int tcnt = 131;
volatile int t = 0;



void setup() {
  // put your setup code here, to run once:
  pinMode(encoderPinA, INPUT);
  pinMode(encoderPinB, INPUT);
  attachInterrupt(2, doEncoderA, CHANGE);
  attachInterrupt(3, doEncoderB, CHANGE);
  lcd.begin(16,2);
  lcd.print("Angle:");
  lcd.setCursor(0,1);
  lcd.print("Velocity:");

  TIMSK2 &= ~(1<<TOIE2);
  TCCR2A &= ~((1<<WGM21) | (1<<WGM20));
  TCCR2B &= ~(1<<WGM22);
  ASSR &= ~(1<<AS2);
  TIMSK2 &= ~(1<<OCIE2A);
  TCCR2B |= (1<<CS22)  | (1<<CS20);
  TCCR2B &= ~(1<<CS21);
  TCNT2 = tcnt;
  TIMSK2 |= (1<<TOIE2);
  Serial.begin (9600); //
  delay(500);
}


void printlcdAngle(){
  lcd.setCursor(7,0);
  lcd.print(angle);
  lcd.setCursor(13,0);
  lcd.print(char(223));
  delay(500);
}

void printlcdVelo(){
  lcd.setCursor(10,1);
  lcd.print(velocity);
}

void loop() {
  // put your main code here, to run repeatedly:
  printlcdAngle();
  printlcdVelo();
}

void doEncoderA(){    //Pin0 interrupt.
if (digitalRead(encoderPinA)==HIGH)
{
  if (digitalRead(encoderPinB) == LOW)
  {
    encoderCount = encoderCount + 1;
  }
  else{
    encoderCount = encoderCount - 1;
  }
}
else {
  if (digitalRead(encoderPinB)==HIGH){
    encoderCount = encoderCount + 1;
  }
  else{
    encoderCount = encoderCount - 1;
  }
  }
  angle = 0.015707*encoderCount/pi*90; //Unit is radian
}

void doEncoderB(){    //Pin1 interrupt.
  if (digitalRead(encoderPinB) == HIGH) {   // look for a low-to-high on channel B
    if (digitalRead(encoderPinA) == HIGH) { // check channel A to see which way encoder is turning
      encoderCount = encoderCount + 1;
    }
    else {
      encoderCount = encoderCount - 1;
    }
  }
  else {                                    // must be a high-to-low edge on on channel B
    if (digitalRead(encoderPinA) == LOW) { // check channel B to see which way encoder is turning
      encoderCount = encoderCount + 1;
    }
    else {
      encoderCount = encoderCount - 1;
    }
  }
  angle = 0.015707*encoderCount/pi*90;  // unit: radian
}

//----------------------------------------------------------
ISR(TIMER2_OVF_vect) {
  TCNT2 = tcnt;  // reload the timer
  t++;
  if (t == 1){
    angle_previous = angle;
  }
  else if (t == 20){
    angle_post = angle;
  }
  else if (t == 21){
    velocity = (angle_post - angle_previous)*50;  // unit: rad/s
    t = 0;
  }
}

//changes made on 1/15/2017
//int changed to float
//Interrrupts changed to pins 2 and 3
//bitwise operations?

