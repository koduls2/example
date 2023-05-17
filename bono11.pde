class bono {
  bono(float a, float b){
    x=a;
    y=b;
    vx=random(-3,3);
    vy=random(-2,2);
  }
  
  float x,y,vx,vy;
  
  void move(){
    x += vx;
    y += vy;
    if (x<0 || x>width) vx =-vx;
    if (y<0 || y>height) vy = -vy;
  }
  void app(){
    fill(170,210,320);
    circle(x,y+30,300);
    fill(0,0,0);
    circle(x-100,y,20);
    circle(x+90,y,20);
    circle(x,y+50,50);
    fill(255,255,255);
    ellipse(x+35,y+70,70,50);
    ellipse(x-35,y+70,70,50);
  }
}
