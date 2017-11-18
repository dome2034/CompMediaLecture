class Planet {
  float t, d, r, s, c;
  Moon m;
  Planet(float d_, float r_) {
    d=d_;
    r=r_;
    t = 0;
    s = random(0.01, 0.03);
    m = new Moon(10, 5);
  }

  void update() {
    t+=s;
    m.update();
  }

  void display() {
    pushMatrix();
    rotate(t);
    translate(d, 0);
    fill(0, 255, 0);
    ellipse(0, 0, r, r);
    m.display();
    popMatrix();
  }
}