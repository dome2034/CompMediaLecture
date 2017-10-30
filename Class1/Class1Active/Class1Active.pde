void setup(){
  size(600,500);
  background(0);
  strokeWeight(1);
}

void draw(){
  stroke(255);
  line(pmouseX,pmouseY,mouseX,mouseY);
  strokeWeight((abs(mouseX-pmouseX)+abs(mouseY-pmouseY))*0.1);
}