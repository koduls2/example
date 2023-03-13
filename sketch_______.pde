int x, y, s;
void setup(){
  size (600,400);
  x = 300;
  y = 200;
  s = 10;
  monitor();
}
void monitor(){
  fill(0,0,0);
  rect(x-s*12,y-s*15,s*24,s*15);
  rect(x-s*2,y,s*4,s*15);
  ellipse(x,y+s*15,s*24,s*6);
  fill(250,250,250);
  rect(x-s*10,y-s*13,s*20,s*11);
}
