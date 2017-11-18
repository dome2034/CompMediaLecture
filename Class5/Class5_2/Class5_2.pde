float r;

void setup() {
  size(400, 400, P3D);
  r = 0;
  rectMode(CENTER);
}

void draw() {

  background(100);
  pushMatrix();
  fill(255, 255, 0, 200);
  translate(100, 100);
  rotateZ(radians(r));
  rect(0, 0, 100, 100);
  popMatrix();

  translate(300, 300);
  rotateY(radians(r));
  rect(0, 0, 100, 100);

  r+=0.4;
}