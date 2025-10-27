void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  frameRate(30);
}

void draw() {
  loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float n = noise(x * 0.01, y * 0.01, frameCount * 0.02);
      float h = map(n, 0, 1, 0, 360);
      float s = map(n, 0, 1, 40, 80); 
      float b = map(n, 0, 1, 30, 90); 
      pixels[x + y * width] = color(h, s, b);
    }
  }
  updatePixels();
}
