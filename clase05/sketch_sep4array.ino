
//int myPins[] = {4,8,15,16,23,42};

int nLost[] = {4,8,15,16,23,42};
int ledPins[] = {3,5,6,9,10,11};

void setup() {
  Serial.begin(9600);

Serial.println("empezando ciclo for");
for (int i = 0; i <= 5; i++){
Serial.println(nLost[i]);
delay(1000);

}
Serial.println("salí del ciclo for");
}

void loop() {
  // put your main code here, to run repeatedly:

}
