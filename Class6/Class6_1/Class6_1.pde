PFont f, f2;
float x,t=0;
String [] headline = {"Breaking News Hello !!", "Hello again!!!"};
String msg = "Spining String!!!";
int index = 0;

void setup() {
  size(400, 300,P3D);
  f = createFont("Arial", 16, true);
  f2 = createFont("FreesiaUPC", 16, true);
  x = width;
  smooth();
}

void draw() {
  background(255);
  textFont(f, 20);
  fill(200, 0, 0);
  text(headline[index], x, 280);
  x = x-1;
  if (x< -textWidth(headline[index])) {
    x=width;
    index = (index+1)%headline.length;
  }
  line(0, height-20, width, height-20);
  textFont(f2, 20);
  fill(0);
  String mouseCo = "("+mouseX+","+mouseY+")";
  text(mouseCo, mouseX, mouseY);
  
  translate(width/2,height/2);
  rotate(t);
  textAlign(CENTER);
  text(msg,0,0);
  t+=0.01;
}