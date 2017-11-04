float theta = 0;
void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  background(0);
  float x = (sin(theta)+1)*width/2;
  theta+=0.05;

  fill(255, 255, 0);
  stroke(255, 255, 0);
  line(width/2, 0, x, height/2);
  noStroke();
  ellipse(x, height/2, 16, 16);
}

void mousePressed() {
}