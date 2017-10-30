Ball ball1, ball2,ball3,ball4;

void setup() {
  size(300, 300);
  ball1 = new Ball(100, 50, 2, color(255, 0, 0), 20, 0.5);
  ball2 = new Ball(200, 50, 1, color(0, 255, 0), 50, 0.5);
  ball3 = new Ball(50, 50, 5, color(0, 255, 255), 30, 0.5);
  ball4 = new Ball(150, 50, 3, color(255, 255, 0), 30, 0.5);
}

void draw() {
  noStroke();
  background(255);

  ball1.move();
  ball1.display();

  ball2.move();
  ball2.display();
  
  ball3.move();
  ball3.display();
  
  ball4.move();
  ball4.display();
}