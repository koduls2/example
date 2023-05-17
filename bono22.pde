class bono2 {
  bono2(){
  } // using mouse
    
  
  void app(){
    fill(100,180,320);
    circle(mouseX,mouseY+30,300);
    fill(0,0,0);
    circle(mouseX-100,mouseY,20);
    circle(mouseX+90,mouseY,20);
    circle(mouseX,mouseY+50,50);
    fill(255,255,255);
    ellipse(mouseX+35,mouseY+70,70,50);
    ellipse(mouseX-35,mouseY+70,70,50);
  }
} 
