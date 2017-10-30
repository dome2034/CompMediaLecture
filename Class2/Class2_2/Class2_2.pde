int x = 0;
int y = 0;
int r = 0;
int i = 0;
void setup(){
  size(600,600);
    background(255);
    frameRate(30);
}

void draw(){
  noStroke();
  i = (int)random(0,255);
  fill(i,i,0,(int)random(0,255));
  r = (int)random(0,255);
  ellipse((int)random(0,600),(int)random(0,600),r,r);
}