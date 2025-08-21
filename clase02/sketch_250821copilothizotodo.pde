// Suprematist/Constructivist animated composition with centered, bold phrase

float angleBlack = 0;
float angleRed = 0;
float circleYOffset = 0;
float blueBarX = 0;
float yellowRectOffset = 0;

String phrase = "He aprovechado las sombras que pasan de un mundo a otro para sembrar la muerte y la locura";

void setup() {
  size(600, 600);
  background(245);
}

void draw() {
  background(245);

  // Animate values
  angleBlack = radians(-30) + sin(frameCount * 0.012) * 0.1;
  angleRed = radians(-28) + cos(frameCount * 0.01) * 0.08;
  circleYOffset = sin(frameCount * 0.013) * 6;
  blueBarX = sin(frameCount * 0.02) * 8;
  yellowRectOffset = cos(frameCount * 0.015) * 7;

  // Large thin black circle in the center
  noFill();
  stroke(40);
  strokeWeight(2);
  ellipse(width/2, height/2 + circleYOffset, 420, 420);

  // Large black diagonal rectangle (bar)
  pushMatrix();
  translate(width/2 + 30, height/2 + 50);
  rotate(angleBlack);
  fill(30);
  noStroke();
  rectMode(CENTER);
  rect(0, 0, 220, 22);
  popMatrix();

  // Thin dark red diagonal bar
  pushMatrix();
  translate(width/2 - 70, height/2 + 10);
  rotate(angleRed);
  fill(160, 40, 40);
  rectMode(CENTER);
  rect(0, 0, 220, 8);
  popMatrix();

  // Pale purple/pink square (bottom left)
  fill(200, 170, 200, 120);
  noStroke();
  pushMatrix();
  translate(width/2 - 110, height/2 + 80);
  rotate(radians(-13));
  rectMode(CENTER);
  rect(0, 0, 90, 90);
  popMatrix();

  // Orange/beige circle (bottom center, slightly left, moves gently)
  fill(230, 180, 120);
  noStroke();
  ellipse(width/2 - 30, height/2 + 90 + circleYOffset, 70, 70);

  // Large red square/rectangle (top right)
  fill(120, 30, 30);
  noStroke();
  rect(width/2 + 110, height/2 - 140, 120, 120);

  // Light blue square next to red (top right)
  fill(170, 185, 215);
  rect(width/2 + 100, height/2 - 140, 50, 40);

  // Small yellow rectangles (right of center, gently moving)
  fill(235, 210, 80);
  rect(width/2 + 70 + yellowRectOffset, height/2 + 10, 35, 8);
  rect(width/2 + 100 - yellowRectOffset, height/2 + 25, 15, 6);

  // Thin black line (center diagonal)
  stroke(40);
  strokeWeight(2);
  line(width/2 - 80, height/2 + 110, width/2 + 110, height/2 - 130);

  // Small blue bar and line (top, gently moving horizontally)
  stroke(40);
  strokeWeight(2);
  line(width/2 - 30 + blueBarX, height/2 - 175, width/2 - 30 + blueBarX, height/2 - 155);
  noStroke();
  fill(40, 60, 170);
  rect(width/2 - 45 + blueBarX, height/2 - 155, 30, 7);

  // --- Centered, bold phrase with semi-transparent background ---
  float bannerWidth = width * 0.9;
  float bannerHeight = 66;
  float bannerX = (width - bannerWidth) / 2;
  float bannerY = height/2 - bannerHeight/2;
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(-7)); // Slight angle for constructivist feel

  // Banner background
  fill(20, 20, 20, 210); // semi-transparent dark
  noStroke();
  rectMode(CENTER);
  rect(0, 0, bannerWidth, bannerHeight, 16);

  // Phrase text
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255, 238, 210); // very light cream
  text(phrase, 0, 0, bannerWidth-30, bannerHeight-14);
  popMatrix();
}
