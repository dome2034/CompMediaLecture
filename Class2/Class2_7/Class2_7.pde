float speedY = 0;
float gravity = 0.1;
float x = 150;
float y = 50;
float w = 50;
float h = 50;
boolean button = false;


void setup() {
  size(300, 600);
  frameRate(100);
}

void draw() {
  noStroke();
  background(255);
  fill(255, 0, 0);
  ellipse(x, y, h, w);
  if (button) {
    y=y+speedY;
    speedY = speedY+gravity;
    if (y+25>height) {
      speedY=speedY*(-0.95);
    }
  } else {
    ellipse(x, y, h, w);
  }
}

void mousePressed() {
  button = !button;
}