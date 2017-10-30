void setup(){
  size(600,500);
  background(255);
  strokeWeight(1);
}

void draw(){
  
}

void mousePressed(){
  noStroke();
  fill(50,100);
  ellipse(mouseX,mouseY,20,20);
  fill(50,150);
  ellipse(mouseX,mouseY,50,50);
  fill(50,200);
  ellipse(mouseX,mouseY,60,60);
}

void keyPressed(){
  background(255);
}