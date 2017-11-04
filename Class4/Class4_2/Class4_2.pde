float r = 0, theta = 0;
void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  //background(0);
  float x = r*cos(theta);
  float y = r*sin(theta);

  noStroke();
  fill(x, y, random(0,255));

  ellipse(x+(width/2),y+(height/2), 5, 5);
  theta += 0.1;
  r+=0.1;
}

void mousePressed() {
}