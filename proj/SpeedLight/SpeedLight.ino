/*
 * Indicator Light for Motor Speed Setpoint:
 * Measures angular velocity of encoder in degrees per second (averaged over every 250ms)
 * and compares to arbitrary speed setpoint value. Lights up LED when difference is larger than arbitrary threshold.
 */

#define encoder0PinA  2
#define encoder0PinB  3
#define ledPin 13
#define errorThreshold 20

long targetSpeed = 40; // Target angulary velocity / setpoint in degrees per second

volatile signed long encoder0Pos = 0;
signed long encoder0PosPrev = 0;
signed long oldTime = 0;
signed long newTime = 0;
signed long dps = 0; // Angulary velocity in degrees per second

void setup() {
  pinMode(encoder0PinA, INPUT);
  pinMode(encoder0PinB, INPUT);

  pinMode(ledPin, OUTPUT);

  attachInterrupt(digitalPinToInterrupt(encoder0PinA), doEncoderA, CHANGE);
  attachInterrupt(digitalPinToInterrupt(encoder0PinB), doEncoderB, CHANGE);

  oldTime = millis();
  
  Serial.begin (9600);
}

void loop() {
  newTime = millis();
  dps = ((encoder0Pos - encoder0PosPrev) * 360 * 1000 / 800) / (newTime - oldTime);
  Serial.println(dps);
  if (abs(dps - targetSpeed) > errorThreshold) {
    digitalWrite(ledPin, HIGH);
  } else {
    digitalWrite(ledPin, LOW);
    Serial.println("CONGRATS");
  }
  oldTime = newTime;
  encoder0PosPrev = encoder0Pos;
  delay(250);
}

void doEncoderA() {
  // look for a low-to-high on channel A
  if (digitalRead(encoder0PinA) == HIGH) {

    // check channel B to see which way encoder is turning
    if (digitalRead(encoder0PinB) == LOW) {
      encoder0Pos = encoder0Pos + 1;         // CW
    }
    else {
      encoder0Pos = encoder0Pos - 1;         // CCW
    }
  }

  else   // must be a high-to-low edge on channel A
  {
    // check channel B to see which way encoder is turning
    if (digitalRead(encoder0PinB) == HIGH) {
      encoder0Pos = encoder0Pos + 1;          // CW
    }
    else {
      encoder0Pos = encoder0Pos - 1;          // CCW
    }
  }
  //Serial.println (encoder0Pos, DEC);
  // use for debugging - remember to comment out
}

void doEncoderB() {
  // look for a low-to-high on channel B
  if (digitalRead(encoder0PinB) == HIGH) {

    // check channel A to see which way encoder is turning
    if (digitalRead(encoder0PinA) == HIGH) {
      encoder0Pos = encoder0Pos + 1;         // CW
    }
    else {
      encoder0Pos = encoder0Pos - 1;         // CCW
    }
  }

  // Look for a high-to-low on channel B

  else {
    // check channel B to see which way encoder is turning
    if (digitalRead(encoder0PinA) == LOW) {
      encoder0Pos = encoder0Pos + 1;          // CW
    }
    else {
      encoder0Pos = encoder0Pos - 1;          // CCW
    }
  }
}
