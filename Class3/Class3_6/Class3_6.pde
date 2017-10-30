float[]x = new float[50];
float[]y = new float[50];

void setup() {
  frameRate(200);
  size(300, 300);
  for (int i=0; i<x.length; i++) {
    x[i] = 0;
    y[i] = 0;
  }
}

void draw() {
  background(0);
  noStroke();
  x[x.length-1] = mouseX;
  y[y.length-1] = mouseY;

fill(255, 255, 0);
  for (int i=0; i<x.length-1; i++) {
    x[i]=x[i+1];
    y[i]=y[i+1];
  }

  for (int i=0; i<x.length-1; i++) {
    fill(255-i, 255-i, 0);
    ellipse(x[i], y[i], i, i);
  }
}