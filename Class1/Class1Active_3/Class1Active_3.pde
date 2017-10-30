void setup(){
  size(600,600);
  
  smooth();
}

void draw(){
  background(#53B2CE);
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  //BODY
  fill(#3DC953);
  rect(mouseX,mouseY,20,100);
  
  //Head
  fill(#CE9D53);
  ellipse(mouseX,mouseY-30,60,60);
  
  //mouth
  fill(255);
  rect(mouseX,mouseY-10,10,20);
  
  //Eyes
  fill(0);
  ellipse(mouseX-19,mouseY-30,19,32);
  ellipse(mouseX+19,mouseY-30,19,32);
  fill(abs(mouseX/2),abs(mouseX/2),abs(mouseY/2));
  ellipse(mouseX-19,mouseY-30,19,20);
  ellipse(mouseX+19,mouseY-30,19,20);
  
  //Hair
  line(mouseX-10,mouseY-50,pmouseX-20,pmouseY-80);
  line(mouseX+10,mouseY-50,pmouseX+20,pmouseY-80);
  
  //Arms
  line(mouseX-10,mouseY,pmouseX-30,pmouseY+10);
  line(mouseX+10,mouseY,pmouseX+30,pmouseY+10);
  
  //Legs
  line(mouseX-10,mouseY+50,pmouseX-10,pmouseY+70);
  line(mouseX+10,mouseY+50,pmouseX+10,pmouseY+70);
}