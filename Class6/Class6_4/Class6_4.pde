float r = 100, w=40;

void setup() {
  size(400, 400, P3D);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  stroke(255);
  noFill();
  ellipse(0, 0, 2*r, 2*r);

  float arclength = 0;

  for (int i =0; i<10; i++) {
    arclength +=w/2;
    float theta = arclength/r;
    
    pushMatrix();
    translate(r*cos(theta),r*sin(theta));
    rotate(theta);
    fill(255,100);
    rectMode(CENTER);
    rect(0,0,w,w);
    popMatrix();
    
    arclength += w/2;
  }
}