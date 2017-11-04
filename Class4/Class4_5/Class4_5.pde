void setup() {
  size(400, 400);
  background(0);
  noFill();
  stroke(255);
}

void draw() { 
  background(0);
  drawCircle(width/2, height/2, width/2);
}

void mousePressed() {
}

void drawCircle(float x, float y, float r) {
  stroke(x,y,255);
  ellipse(x, y, r, r);
  if (r>7) {
    drawCircle(x-r/2, y, r/2);
    drawCircle(x+r/2, y, r/2);
    drawCircle(x, y-r/2, r/2);
    drawCircle(x, y+r/2, r/2);
  }
}