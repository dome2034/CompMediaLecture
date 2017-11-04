float theta = 0;
void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  background(0);
  float x = (sin(theta)+1)*width/4;
  float x1 = (sin(theta+2)+2)*width/4;
  theta+=0.05;

  fill(255, 255, 0,240);
  noStroke();
  ellipse(width/2, height/2, x, x);
  ellipse(80, 80, x1+5, x1+5);
}

void mousePressed() {
}