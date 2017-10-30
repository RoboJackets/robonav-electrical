/*
 * Indicator Light for Motor Speed Setpoint:
 * Measures angular velocity of encoder in degrees per second (moving average over every 250ms)
 * and compares to arbitrary speed setpoint value. Lights up LED when difference is larger than arbitrary threshold.
 */

const int encoder0PinA = 2;
const int encoder0PinB = 3;
const int ledPin = 13;
const float deadband = 20.0; // Error threshold/deadband in ticks per second

// Following constants are taken from MotorShield.ino
const float ticksPerRev = 200.0; // Cycles/ticks per revolution of encoder disk
const float gearRatio = 32.0;
const float wheelCir = 1.092; // Meters
const float metersPerTick = wheelCir / (ticksPerRev * gearRatio);

float targetSpeed = 40; // Target velocity/setpoint in m/s
float targetAngSpeed = targetSpeed / metersPerTick; // Target angular velocity/setpoint in ticks per second

volatile int encoder0Pos = 0; // Delta of encoder position since last loop iteration
long oldTime = 0; // Time in ms from last loop iteration
float angSpeed = 0; // Angular velocity in ticks per second

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
  // Divide delta of position by 4 (because 4X decoding of quadrature encoder)
  // to get ticks from edges, divide by delta time & convert from ms^-1 to s^-1.
  angSpeed = encoder0Pos * 1000 / 4.0 / (millis() - oldTime);
  Serial.println(angSpeed);
  if (abs(angSpeed - targetAngSpeed) > deadband) {
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
