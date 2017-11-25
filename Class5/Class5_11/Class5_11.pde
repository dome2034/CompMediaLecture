PImage img;
int point = 3;

void setup() {
  img = loadImage("dog.jpg");
  size(400,400);
  background(255);
  smooth();
  frameRate(1000);
}

void draw() {  
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*width;
  
  img.loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  
  noStroke();
  fill(r,g,b,100);
  //rectMode(CENTER);
  //rect(x,y,point,point);
  ellipse(x,y,point,point);
}