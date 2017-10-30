/*
 * Indicator Light for Motor Speed Setpoint:
 * Measures angular velocity of encoder in degrees per second (moving average over every 250ms)
 * and compares to arbitrary speed setpoint value. Lights up LED when difference is larger than arbitrary threshold.
 */

#define encoder0PinA  2
#define encoder0PinB  3
#define ledPin 13
#define errorThreshold 20
#define cpr 200 // Cycles per revolution of encoder disk

int targetSpeed = 40; // Target angulary velocity / setpoint in degrees per second

volatile long encoder0Pos = 0; // Delta of encoder position since last loop iteration
long oldTime = 0; // Time in ms from last loop iteration
int dps = 0; // Angular velocity in degrees per second

void setup() {
  pinMode(encoder0PinA, INPUT);
  pinMode(encoder0PinB, INPUT);
  pinMode(ledPin, OUTPUT);

  attachInterrupt(digitalPinToInterrupt(encoder0PinA), doEncoderA, CHANGE);
  attachInterrupt(digitalPinToInterrupt(encoder0PinB), doEncoderB, CHANGE);

  oldTime = millis();
  
  Serial.begin(9600);
}

void loop() {
  // Divide delta of position by 4*cpr (because 4X decoding of quadrature encoder)
  // and multiply by 360 for change in degrees, divide by delta time, & convert from ms^-1 to s^-1.
  dps = ((encoder0Pos) * 360 * 1000 / (4*cpr)) / (millis() - oldTime);
  Serial.println(dps);
  if (abs(dps - targetSpeed) > errorThreshold) {
    digitalWrite(ledPin, HIGH);
  } else {
    digitalWrite(ledPin, LOW);
    Serial.println("CONGRATS");
  }
  oldTime = millis();
  encoder0Pos = 0;
  delay(250);
}

void doEncoderA() {
  if (digitalRead(encoder0PinA) == digitalRead(encoder0PinB)) {
    encoder0Pos--;
  } else {
    encoder0Pos++;
  }
}

void doEncoderB() {
  if (digitalRead(encoder0PinA) == digitalRead(encoder0PinB)) {
    encoder0Pos++;
  } else {
    encoder0Pos--;
  }
}
