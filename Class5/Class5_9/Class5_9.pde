PImage img;

void setup() {
  size(400, 400);
  img = loadImage("flower.jpg");
  image(img,0,0,width,height);
}

void draw() {
  filter(BLUR,0.9);
}