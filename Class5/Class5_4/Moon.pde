class Moon {
  float t, d, r, s,c;
  Moon(float d_, float r_) {
    d=d_;
    r=r_;
    t = 0;
    s = random(0.05,0.08);
  }
  
  void update(){
    t+=s;
  }
  
  void display(){
    pushMatrix();
      rotate(t);
      translate(d,0);
      fill(200,200,0);
      ellipse(0,0,r,r);
    popMatrix();
  }
}