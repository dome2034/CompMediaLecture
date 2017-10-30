int speedX = 1;
int speedY = 1;
int x = 40;
int y = 50;
int w = 50;
int h = 50;
boolean button = false;

void setup() {
  size(300, 300);
  frameRate(100);
}

void draw() {
  noStroke();
  background(255);
  fill(255, 0, 0);
  ellipse(x, y, h, w);
  if (button) {
    x=x+speedX;
    y=y+speedY;
    if (x<25||x>width-h/2) {
      speedX=-speedX;
    }
    if (y<25||y>height-h/2) {
      speedY=-speedY;
    }
  } else {
    ellipse(x, y, 50, 50);
  }
}

void mousePressed() {
  button = !button;
}