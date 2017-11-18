float r;

void setup() {
  size(300, 300, P3D);
  r = 0;
}

void draw() {

  background(100);
  translate(width/2, height/2);
  rotateY(radians(r));
  rotateX(radians(r));
  rotateZ(radians(r));
  fill(255,254,0,100);
  box(40);
  r+=0.4;
}