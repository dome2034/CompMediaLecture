Planet[] p = new Planet[8];

void setup() {
  size(400, 400, P3D);
  smooth();
  noStroke();
  for(int i=0;i<p.length;i++){
    p[i] = new Planet(40+i*10,i+8);
  }
}

void draw() {
  background(0);
  translate(width/2, height/2);
  //sun
  fill(255,100,0);
  ellipse(0,0,20,20); 
  
  for(int i=0;i<p.length;i++){
    p[i].update();
    p[i].display();
  }
  
}