float tx = 0;
float ty = 5;
void setup() {
  size(300, 300);
  smooth();
}

void draw() {
  background(0);
  float nx = noise(tx)*width;
  float ny = noise(ty)*height;
  tx+=0.01;
  ty+=0.01;
  
  noStroke();
  fill(255,255,0);
  println("tx="+noise(tx)+" nx="+nx);
  println("ty="+noise(ty)+" ny="+ny);
  ellipse(nx,ny,10,10);
}

void mousePressed(){

}