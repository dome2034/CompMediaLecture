
PImage dog;
PImage flower;

void setup() {
  size(400, 400);
   dog= loadImage("dog.jpg");
   flower = loadImage("flower.jpg");
}

void draw() {
  background(dog);
  tint(255, mouseX*255/width);
  image(flower, 0, 0);
}