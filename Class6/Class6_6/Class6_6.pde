PFont f;
String typing ="", saved="";


void setup() {
  size(400, 400);
  f = createFont("Arial", 20, true);
}

void draw() {
  background(255);
  textFont(f);
  fill(0);
  text("Click in this applet and type.\nHit return to save what you typed.", 25, 40);
  text(typing,25,92);
  text(saved,25,132);
}

void keyPressed(){
  if (key =='\n'){
    saved = typing;
    typing ="";
  }else{
    typing = typing + key;
  }
}