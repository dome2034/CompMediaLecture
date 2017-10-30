
void setup() {
  size(600, 600);
  background(255);
  frameRate(30);
}

void draw() {
  stroke(255, 0, 0);
  line(600/3, 0, 600/3, 600);
  if (mouseX<(600/3))
  {
    background(0);
  } else if (mouseX<=(600/3)*2)
  {
    background(100);
  } else
  {
    background(255);
  }
}