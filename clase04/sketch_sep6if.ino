const int potPin = A0;     
const int altPin = 9;  

void setup() {
  pinMode(altPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  int potValue = analogRead(potPin); 
  int frequency = map(potValue, 0, 1023, 100, 2000); 

  tone(speakerPin, frequency); 
  delay(50); 

  if (potValue < 100)
    {
    	Serial.println("SUENOBAJO");
    } 
  
  	if (potValue > 100)
    {
    	Serial.println("SUENOALTO");
    } 



}


