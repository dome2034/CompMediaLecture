int x1 = 0;
int x2 = 300;
int y = 0;

void setup(){
  size(300,300);
}

void draw(){
  background(255);
  noStroke();
  fill(0,0,255,200);
  ellipse(x1,y,50,50);
  fill(255,0,0,200);
  ellipse(x2,y,50,50);
  y = y+1;
  x1 = x1+1;
  x2 = x2-1;
}