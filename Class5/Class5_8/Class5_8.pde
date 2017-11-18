PImage img;

void setup() {
  size(400, 400);
  img = loadImage("flower.jpg");
}

void draw() {
  loadPixels();
  img.loadPixels();
  for (int x = 0; x<width; x++) {
    for (int y = 0; y<height; y++) {
      int loc = x +y*width;
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);

      float distance = dist(x,y,mouseX,mouseY);
      float bright = (100-distance)/100;
      r*= bright;
      g*= bright;
      b*= bright;

      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);
      pixels[loc] = color(r, g, b);
    }
  }
  updatePixels();
}