class hobbang {
 hobbang(float a, float b){
   x=a;
   y=b;
   vx=random(-3,3);
   vy=random(-2,2);
 }
 
 float x,y,vx,vy;
 
 void move(){
  x += vx;
  y += vy;
  if (x<0 || x>width) vx = -vx;
  if (y<0 || y>height) vy = -vy;
 }
 
 void app() {
   float h = 50;
    noStroke();
    fill(255,220,170);
    ellipse(x,y,h*4,3.6*h);
    strokeWeight(0.05*h);
    stroke(0);
    fill(225,0,0);
    ellipse(x,y+h*0.2,1.2*h,h);
    noStroke();
    fill(225);
    rect(x-0.1*h,y,0.3*h,0.2*h);
    fill(225,100,20);
    ellipse(x-1.1*h,y+0.3*h,h,h);
    fill(255);
    rect(x-h,y+0.1*h,0.2*h,0.2*h);
    fill(255,100,20);
    ellipse(x+1.1*h,y+0.3*h,h,h);
    fill(255);
    rect(x+0.8*h,y+0.1*h,0.2*h,0.2*h);
    strokeWeight(0.05*h);
    stroke(0);
    fill(0);
    ellipse(x-0.6*h,y-0.5*h,0.3*h,0.6*h);
    ellipse(x+0.6*h,y-0.5*h,0.3*h,0.6*h);
    strokeWeight(0.05*h);
    stroke(0);
    noFill();
    rect(x-1.1*h,y-0.8*h,0.8*h,0.5*h);
    rect(x+0.3*h,y-0.8*h,0.8*h,0.5*h);
    fill(250);
    rect(x-0.3*h,y-0.8*h,0.6*h,0.05*h);
 }
 
}
