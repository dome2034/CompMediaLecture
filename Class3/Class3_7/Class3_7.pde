Car[] c = new Car[100];

void setup() {
  size(300, 400);
  for (int i=0;i<c.length;i++) {
    c[i] = new Car(0, i*20, random(0,50), color(1*i, 250,1*i), 20);
  }
}
void draw() {
  background(255);
  for (int i=0;i<c.length;i++) {
    c[i].move();
    c[i].display();
  }
}