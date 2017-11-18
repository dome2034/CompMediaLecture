float r;

void setup() {
  size(400, 400, P3D);
  r = 0;
}

void draw() {
  background(100);
  translate(width/2,height/2);
  rotateX(TWO_PI*mouseY/height);
  rotateZ(TWO_PI*mouseX/height);
  drawPyramid(50);
  r+=0.1;
}

void drawPyramid(int t){
  stroke(0);
  beginShape(TRIANGLES);
  fill(255,150);
  vertex(-t,-t,-t);
  vertex(t,-t,-t);
  vertex(0,0,t);
  
  fill(200,150);
  vertex(t,-t,-t);
  vertex(t,t,-t);
  vertex(0,0,t);
  
  fill(255,150);
  vertex(t,t,-t);
  vertex(-t,t,-t);
  vertex(0,0,t);
  
  fill(200,150);
  vertex(-t,t,-t);
  vertex(-t,-t,-t);
  vertex(0,0,t);
  
  endShape();
}