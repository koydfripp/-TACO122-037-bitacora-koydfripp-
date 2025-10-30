import processing.serial.*;

Serial arduino;
float micValor = 0;
boolean modoExplosivo = false;

void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  frameRate(30);

  String[] ports = Serial.list();
  println("Conectando a: " + ports[2]); // ajusta si cambia
  arduino = new Serial(this, ports[2], 9600);
  arduino.bufferUntil('\n');
}

void draw() {
  loadPixels();

  // Detectar si se supera el umbral
  modoExplosivo = micValor > 700;

  // Factor de ruido más equilibrado para evitar desplazamiento lateral
  float factor = map(micValor, 0, 1023, 0.02, 0.06);
  float tiempo = frameCount * factor * 2;

  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float n = noise(x * factor, y * factor, tiempo);

      // Paleta normal vs explosiva
      float h = modoExplosivo ? map(n, 0, 1, 200, 360) : map(n, 0, 1, 0, 180);
      float s = modoExplosivo ? map(n, 0, 1, 80, 100) : map(micValor, 0, 1023, 100, 40);
      float b = modoExplosivo ? map(n, 0, 1, 80, 100) : map(micValor, 0, 1023, 100, 50);

      pixels[x + y * width] = color(h, s, b);
    }
  }
  updatePixels();
}

void serialEvent(Serial arduino) {
  String data = arduino.readStringUntil('\n');
  if (data != null) {
    data = trim(data);
    try {
      micValor = float(data);
      println("Micrófono: " + micValor);
    } catch (NumberFormatException e) {
      println("Dato inválido: " + data);
    }
  }
}
