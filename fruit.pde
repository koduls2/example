//int x,y;
void apple() {  //circle1
  fill(0, 230, 0);
  circle(circle1.x, circle1.y, circle1.radius/1.5);
  fill(0, 150, 0);
  arc(circle1.x+circle1.radius/7.5, circle1.y-circle1.radius/4, circle1.radius/2, circle1.radius/4.5, 7*PI/3, 23*PI/9);
  fill(0, 80, 0);
  curve(circle1.x-circle1.radius, circle1.y-circle1.radius/2.5, circle1.x+circle1.radius/7.5, circle1.y-circle1.radius/6, circle1.x+circle1.radius/3, circle1.y-circle1.radius/3, circle1.x+circle1.radius/2, circle1.y-circle1.radius/2);
}
void grape() {
  if (circle_special.num%4!=0) fill(0, 0, 0);
  else {
    fill(255, 215, 0);
    for (int i=0; i<3; i++) {
      circle(circle_special.x-circle_special.radius/3+circle_special.radius/3*i, circle_special.y+circle_special.radius/3-circle_special.radius/10*i, circle_special.radius/2);
    }
    circle(circle_special.x+circle_special.radius/10, circle_special.y+circle_special.radius/3-circle_special.radius*13/30, circle_special.radius/2);
    for (int i=1; i<3; i++) {
      circle(circle_special.x-circle_special.radius/3+circle_special.radius/10*i, circle_special.y+circle_special.radius/3-circle_special.radius/3*i, circle_special.radius/2);
    }
    fill(10, 110, 10);
    curve(circle_special.x+circle_special.radius/4, circle_special.y-circle_special.radius*8/30, circle_special.x+circle_special.radius/4, circle_special.y-circle_special.radius*8/30, circle_special.x+circle_special.radius*5/10, circle_special.y-circle_special.radius*5/10, circle_special.x+circle_special.radius*12/10, circle_special.y-18*circle_special.radius/10);
  }
}
void watermelon() {
  fill(90, 220, 120);
  arc(circle3.x+circle3.radius/4, circle3.y-circle3.radius/4, circle3.radius, circle3.radius, PI/4, 5*PI/4);
  fill(255, 0, 0);
  arc(circle3.x+circle3.radius/4, circle3.y-circle3.radius/4, 12*circle3.radius/15, 12*circle3.radius/15, PI/4, 5*PI/4);
  fill(0);
  for (int i=1; i<8; i++) {
    circle(circle3.x+3*circle3.radius/70+3*circle3.radius*i/64, circle3.y-3*circle3.radius/8+3*circle3.radius*i/64, 3*circle3.radius/120);
  }
  for (int i=1; i<5; i++) {
    circle(circle3.x+circle3.radius/20+3*circle3.radius*i/64, circle3.y-circle3.radius/4+3*circle3.radius*i/64, circle3.radius/40);
  }
}
void cherry() {
  fill(160, 0, 0);
  circle(circle4.x-circle4.radius/3, circle4.y-circle4.radius/12, circle4.radius/1.5);
  fill(0, 180, 0);
  quad(circle4.x-circle4.radius/12, circle4.y-circle4.radius*5/18, circle4.x+5*circle4.radius/12, circle4.y-circle4.radius*7/12, circle4.x+circle4.radius/4, circle4.y-11*circle4.radius/18, circle4.x-circle4.radius/36, circle4.y-circle4.radius/3);
  quad(circle4.x+circle4.radius/4, circle4.y+circle4.radius/9, circle4.x+5*circle4.radius/12, circle4.y-7*circle4.radius/12, circle4.x+circle4.radius/4, circle4.y-11*circle4.radius/18, circle4.x+5*circle4.radius/12, circle4.y+circle4.radius/9);
  fill(160, 0, 0);
  circle(circle4.x+circle4.radius/4, circle4.y+circle4.radius/9, circle4.radius/1.5);
}
void bomb() {
  fill(60);
  circle(circle2.x, circle2.y, circle2.radius/1.5);
  fill(222, 222, 170);
  curve(circle2.x+circle2.radius, circle2.y-circle2.radius/2.5, circle2.x+circle2.radius/6, circle2.y-circle2.radius/5, circle2.x+circle2.radius/2.5, circle2.y-circle2.radius/2.5, circle2.x+circle2.radius/2, circle2.y+circle2.radius/3.5);
  fill(60);
  quad(circle2.x+circle2.radius/7, circle2.y-11*circle2.radius/30, circle2.x+circle2.radius/30, circle2.y-circle2.radius/3.5, circle2.x+circle2.radius/4, circle2.y-circle2.radius/10, circle2.x+13*circle2.radius/42, circle2.y-circle2.radius/4.5);
}
void basket() {
  fill(200, 100, 0);
  quad(mouseX-BASKET_SIZE, height-BASKET_SIZE, mouseX+BASKET_SIZE, height-BASKET_SIZE, mouseX+BASKET_SIZE/2, height, mouseX-BASKET_SIZE/2, height);
}
void tnt() {
  fill(200, 0, 0);
  circle(circle_bomb.x, circle_bomb.y, circle_bomb.radius/1.5);
  fill(170, 222, 170);
  curve(circle_bomb.x+circle_bomb.radius, circle_bomb.y-circle_bomb.radius/2.5, circle_bomb.x+circle_bomb.radius/6, circle_bomb.y-circle_bomb.radius/5, circle_bomb.x+circle_bomb.radius/2.5, circle_bomb.y-circle_bomb.radius/2.5, circle_bomb.x+circle_bomb.radius/2, circle_bomb.y+circle_bomb.radius/3.5);
  fill(130, 0, 0);
  quad(circle_bomb.x+circle_bomb.radius/7, circle_bomb.y-11*circle_bomb.radius/30, circle_bomb.x+circle_bomb.radius/30, circle_bomb.y-circle_bomb.radius/3.5, circle_bomb.x+circle_bomb.radius/4, circle_bomb.y-circle_bomb.radius/10, circle_bomb.x+13*circle_bomb.radius/42, circle_bomb.y-circle_bomb.radius/4.5);
}
