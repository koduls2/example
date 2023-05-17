class bono3 {
  bono3(float a, float b){
    x = a;
    y = b;
    
  } // using keyboard
    
  float x,y,vx,vy;
  boolean keyA = false;
  boolean keyW = false;
  boolean keyS =false;
  boolean keyD = false;
  void app(){
    fill(0,180,320);
    circle(x,y+30,300);
    fill(0,0,0);
    circle(x-100,y,20);
    circle(x+90,y,20);
    circle(x,y+50,50);
    fill(255,255,255);
    ellipse(x+35,y+70,70,50);
    ellipse(x-35,y+70,70,50);
  }
void keyPressed(){
    if (key =='a'){
      x-=5;
      
    }
    if (key =='s'){
      keyS = true;
    }
    if (key =='d'){
      keyD = true;
    }
    if (key =='w'){
      keyW = true;
    }
  }
  void keyReleased(){
    if (key =='a'){
      keyA = false;
    }
    if (key =='s'){
      keyS = false;
    }
    if (key =='d'){
      keyD = false;
    }
    if (key =='w'){
      keyW = false;
    }
  }
  void move(){
    if(keyPressed){
      if(key == 'a'){
        x -= 5;
      }
      else if (key =='s'){
        y+= 5;
      }
      else if (key == 'd'){
        x += 5;
      }
      else if (key == 'w'){
        y-=5;
      }
    }
  }
    
    
} 
