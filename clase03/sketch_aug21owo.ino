int ledPin = 13;
int tiempoOn = 400;
int tiempoOff = 200;

void setup() {
pinMode(ledPin,OUTPUT);
Serial.begin(9600);
}

void loop() {
digitalWrite(ledPin,HIGH);
Serial.println("owo");

delay(tiempoOn);
digitalWrite(ledPin,LOW);
Serial.println("uwu");

delay(tiempoOff);

}
