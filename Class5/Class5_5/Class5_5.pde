PImage img;
float x, y, r;

void setup() {
  size(500, 500);
  x=0;
  y=width/2;
  r=0;
  img = loadImage("dog.jpg");
}

void draw() {
  background(255);
  translate(x,y);
  rotate(r);
  image(img, 0, 0, 60, 75);
  x++;
  r+=0.01;
  if (x>width){
    x=0;
  }
}