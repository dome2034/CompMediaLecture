PImage img;
PImage dest;

void setup() {
  img = loadImage("flower.jpg");
  size(400,400);
  dest = createImage(img.width, img.height,RGB);
}

void draw() {  
  img.loadPixels();
  dest.loadPixels();
  for (int x = 1; x<width; x++) {
    for (int y = 0; y<height; y++) {
      int loc = x +y*width;
      color pix = img.pixels[loc];
      
      int leftLoc = (x-1)+y*img.width;
      color leftPix = img.pixels[leftLoc];
      float diff = abs(brightness(pix) - brightness(leftPix));
      dest.pixels[loc] = color(diff);
    }
  }
  dest.updatePixels();
  image(dest,0,0);
}