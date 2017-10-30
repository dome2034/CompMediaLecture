Car myCar,myCar2,myCar3;

void setup() {
  size(300, 300);
  myCar = new Car(50,50,1,color(255,0,0),20);
  myCar2 = new Car(50,100,2,color(255,255,0),30);
  myCar3 = new Car(50,150,0.5,color(0,255,255),30);
}
void draw() {
  background(255);
  myCar.move();
  myCar.display();
  
  myCar2.move();
  myCar2.display();
  
  myCar3.move();
  myCar3.display();
}