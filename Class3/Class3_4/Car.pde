class Car {
  //-------------- properties ------------------------
  color c;
  float x;
  float y;
  float speed;
  float size;
  
  //-------------- Constructor -----------------------
  Car(float x_,float y_,float s,color c_,float size_) {
    c=c_;
    x=x_;
    y=y_;
    speed=s;
    size=size_;
  }

  //-------------- Medthod ---------------------------
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(x, y, 20, 10);
  }
  void move() {
    x+=speed;
    if (x>width) {
      x=0;
    }
  }
}