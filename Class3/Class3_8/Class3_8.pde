Ball[] b=new Ball[1];
void setup() {
  size(300, 300);
  smooth();
  b[0] = new Ball(100, 50, 2, color(255, 0, 0), 20, 0.5);
}

void draw() {
  noStroke();
  background(255);

  for (int i=0; i<b.length; i++) {
    b[i].move();
    b[i].display();
  }
}

void mousePressed(){
  Ball bb = new Ball(mouseX, mouseY, 2, color(random(0,255), random(0,255),random(0,255)), random(20,50), 0.5); 
  b=(Ball[])append(b,bb);
}