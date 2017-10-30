int x=0;
int speed=1;
void setup(){
  size(300,300);
}
void draw(){
  background(255);
   move(); 
   bounce();
   display();
}
//---------- function --------------------------
void move(){
  x=x+speed;
}

void bounce(){
  if(x>width||x<0){
    speed=-speed;
  }
}

void display(){
  fill(175);
  ellipse(x,height/2,30,30);
}