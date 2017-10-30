int  x1=100;
int  x2=50;
int  x3=150;
int speed=1;

void setup() {
  size(300, 300);
}
void draw() {
  background(200);
  
  move(); 
  bounce();
  drawCar(x1, 100, 64, color(200, 200, 0));
  drawCar(x2, 75, 32, color(0, 200, 100));
  drawCar(x3, 175, 40, color(200, 0, 0));
}
//---------- function --------------------------
void drawCar(int x, int y, int size, color c) {
  int offset = size/4;
  rectMode(CENTER);
  fill(c);
  rect(x, y, size, size/2);

  fill(0);
  rect(x-offset, y-offset, offset, offset/2);
  rect(x+offset, y-offset, offset, offset/2);
  rect(x-offset, y+offset, offset, offset/2);
  rect(x+offset, y+offset, offset, offset/2);
   
}

void move() {
  x1=x1+speed;
}

void bounce() {
  if (x1>width||x1<0) {
    speed=-speed;
  }
}