
void setup() {
  size(255, 255);
  background(255);
}
void draw() {
  stroke(0);
  line(0,height/2,width,height/2);
  line(width/2,0,width/2,height);
  
  rectMode(CORNER);
  
  fill(distance(0,0,mouseX,mouseY));
  rect(0,0,width/2,height/2);
  
  fill(distance(width,0,mouseX,mouseY));
  rect(width/2,0,width/2,height/2);
  
  fill(distance(0,height,mouseX,mouseY));
  rect(0,height/2,width/2,height/2);
  
  fill(distance(width,height,mouseX,mouseY));
  rect(width/2,height/2,width/2,height/2);
}
//---------- function --------------------------
float distance(float x1, float x2, float y1, float y2) {
  float d1=x1-x2;
  float d2=y1-y2;
  float d=sqrt(d1*d1+d2*d2);
  return d;
}