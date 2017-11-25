PFont f;
float r = 100, w=40;
String msg = "Hello World !!";
float t;

void setup() {
  size(400, 400, P3D);
  f = createFont("Arial", 22, true);
  textFont(f, 20);
  t=0;
}

void draw() {
  background(0);
  translate(width/2, height/2);
  stroke(255);
  noFill();
  //ellipse(0, 0, 2*r, 2*r);

  float arclength = 0;
  rotate(PI+t);
  for (int i =0; i<msg.length(); i++) {
    arclength += textWidth(msg.charAt(i));
    float theta = arclength/r;

    pushMatrix();
    translate(r*cos(theta), r*sin(theta));
    rotate(theta+PI/2);
    fill(255, 255);
    textAlign(CENTER);
    text(msg.charAt(i), 0, 0); 
    popMatrix();
    arclength += textWidth(msg.charAt(i));
  }
  t+=0.02;
}