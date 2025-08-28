int potPin = A0;
int ledPin = 9;
int valorPot = 0;
int potMap = 0;
int intenLed = 0;

void setup() {
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);

}

void loop() {

   valorPot = analogRead(potPin);
  potMap = map(valorPot,0,1023,0,255);
  intenLed = potMap;

  
  analogWrite(ledPin, intenLed);
  Serial.println(intenLed);

}
