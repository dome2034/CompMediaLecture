PFont f;
float y, t=0;
String msg = "Hello World!!\n Hello again\n and again\n and again...";
int index = 0;

void setup() {
  size(400, 300, P3D);
  f = createFont("Arial", 16, true);
  y = height;
  smooth();
}

void draw() {
  background(0);
  textFont(f, 20);
  fill(0, 200, 200);

  translate(width/2, height/2);
  rotateX(PI/4);

  textAlign(CENTER);
  text(msg, 0, y); 
  y=y-1;
}