int potPin = A0;
int ledPin = 7;
int valorPot = 0;
int potMap = 0;
int tiempoBlink = 100;

void setup() {
  Serial.begin(9600);
  pinMode(ledPin,OUTPUT);
  


}

void loop() {
  valorPot = analogRead(potPin);
  potMap = map(valorPot,0,1023,100,2000);

   tiempoBlink = potMap;

  digitalWrite(ledPin,HIGH);
  delay(tiempoBlink);
  digitalWrite(ledPin,LOW);
  delay(tiempoBlink);

  Serial.println(potMap);
  



}
