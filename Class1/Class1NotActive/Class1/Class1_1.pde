int x = 300;
int y = 300;
size(x,y);
background(255);

stroke(255,0,0);
ellipse((x/2),(y/2),100,100);

stroke(0,0,255);
line(0,0,300,300);

stroke(0,0,0);
strokeWeight(1); 
line((x/2)-30, (y/2)+30,50, (y/2)+30);

strokeWeight(5);  
line((x/2), (y/2),25, 225);

strokeWeight(10); 
line((x/2), (y/2),25, 300);

fill(255,255,0);
noStroke();
ellipse(((x/2)+54),((y/2)+54),50,50);