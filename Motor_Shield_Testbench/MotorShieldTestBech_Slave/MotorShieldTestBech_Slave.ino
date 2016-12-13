const int trigger = 3;
const int input = A0;
const int output = 2;

int freq = 0;

void setup() 
{
  pinMode(input, INPUT);
  pinMode(output, OUTPUT);
  attachInterrupt(1, changeFreq, CHANGE);
}

void loop() 
{
  digitalWrite(output, HIGH);
  delay(freq * 1000 / 2);
  digitalWrite(output, LOW);
  delay(freq * 1000 / 2);
}

void changeFreq()
{
  freq = analogRead(A0);
}

