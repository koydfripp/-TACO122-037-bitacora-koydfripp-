int intervalo = 1000;
int potPin = A0;
int ledPin = 7;
bool stLed = 0;
int valorPot = 0;
int potMap = 0;
unsigned long tiempoAct = 0;
unsigned long tiempoAnt = 0;

void setup() {
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);

}

void loop() {

  tiempoAct = millis();
   valorPot = analogRead(potPin);
  potMap = map(valorPot,0,1023,100,2000);
  intervalo = potMap;

  if (tiempoAct - tiempoAnt > intervalo){
    stLed = !stLed;
    Serial.println("BIG SHOT");
    tiempoAnt = tiempoAct;

  }
  digitalWrite(ledPin, stLed);
  

}
