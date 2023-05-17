class watermelon {
  // constructor
  watermelon(float p, float q, float r){
    x= p; y=q; d=r; vx= random(2,-2); vy = random(2,-2);
  }
  //member data
  float x, y, d, vx, vy;
  // member function
  void update(){
   x += vx;
   y += vy;
   if(x<0 || x>width) vx = - vx;
   if(y<0 || y>height) vy = - vy;
  }
  
  void fruit(){
  fill(90, 220, 120);
  arc(x+d/4, y-d/4, d, d, PI/4, 5*PI/4);
  fill(255, 0, 0);
  arc(x+d/4, y-d/4, 12*d/15, 12*d/15, PI/4, 5*PI/4);
  fill(0);
  for (int i=1; i<8; i++) {
    circle(x+3*d/70+3*d*i/64, y-3*d/8+3*d*i/64, 3*d/120);
  }
  for (int i=1; i<5; i++) {
    circle(x+d/20+3*d*i/64, y-d/4+3*d*i/64, d/40);
  }
}
}
