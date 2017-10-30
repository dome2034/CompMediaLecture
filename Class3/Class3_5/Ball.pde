class Ball {
  //-------------- properties ------------------------
  color c;
  float x;
  float y;
  float speed;
  float size;
  float gravity;
  
  //-------------- Constructor -----------------------
  Ball(float x_,float y_,float s,color c_,float size_,float g) {
    c=c_;
    x=x_;
    y=y_;
    speed=s;
    size=size_;
    gravity = g;
  }

  //-------------- Medthod ---------------------------
  void display() {
    rectMode(CENTER);
    fill(c);
    ellipse(x, y, size, size);
  }
  void move() {
    y=y+speed;
    speed = speed+gravity;
    if (y>height-(size/2)) {
      speed=speed*(-0.95);
    }
  }
}