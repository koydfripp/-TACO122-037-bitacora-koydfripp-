void setup() {
  size(600, 600);
  background(HSB,100,66,100);

  // Red rectangle, rotated
  pushMatrix();
  translate(130, 350);
  rotate(radians(-60));
  fill(200, 40, 40);
  noStroke();
  rect(0, 0, 320, 60);
  popMatrix();
  
  // Black diagonal line
  stroke(20);
  strokeWeight(10);
  line(50, 500, 550, 100);
  
  // Cream circle
  fill(255, 253, 208); // Cream color
  noStroke();
  ellipse(420, 450, 100, 100);
  
  // Small yellow triangle
  noStroke();
  fill(240, 200, 40);
  triangle(450, 100, 232, 80, 500, 300);
}

void draw() {

}
