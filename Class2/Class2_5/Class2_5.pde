int x = 0;
int y = 0;
int w = 0;
int h = 0;
float b1 = 0;
float b2 = 0;
float b3 = 0;
float b4 = 0;

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  stroke(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, height, height/2);

  if (mouseX > 0 && mouseX < (width/2) && mouseY > 0 && mouseY < (height/2)) {
    b1 = 255;
  } else if (mouseX > (width/2) && mouseX < width && mouseY > 0 && mouseY < (height/2)) {
    b2 = 255;
  } else if (mouseX > 0 && mouseX < (width/2) && mouseY > (height/2) && mouseY < (height)) {
    b3 = 255;
  } else if (mouseX > (width/2) && mouseX < (width) && mouseY > (height/2) && mouseY < (height)) {
    b4 = 255;
  } 

  fill(b1);
  rect(0, 0, (width/2), (height/2));
  fill(b2);
  rect((width/2), 0, (width/2), (height/2));
  fill(b3);
  rect(0, (height/2), (width/2), (height/2));
  fill(b4);
  rect((width/2), (height/2), (width/2), (height/2));

  b1= b1-5;
  b2= b2-5;
  b3= b3-5;
  b4= b4-5;
}