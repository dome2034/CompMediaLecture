
void setup() {
  size(255, 255);
  background(0);
  frameRate(30);
}

void draw() {
  background(0);
  int i =0;
  while (i<height) {
    int j =0;
    while (j<width) {
      noStroke();
      fill(random(0, 255), random(0, 255), random(0, 255), 200);
      rect(j, i, 5, 5);
      j=j+5;
    }
    i=i+5;
  }
}