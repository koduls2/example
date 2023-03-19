import processing.sound.*;
SoundFile bgm;
//SoundFile score_sound;
//SoundFile miss_sound;
//SoundFile crack_sound;

// Parameters
int BASKET_SIZE = 50;
int score = 0;
int best_score=0;
int misses = 0;
int gameTime = 0;





float speed1 = random(2, 4);  // 원1이 떨어지는 속도
float speed2 = random(5, 7);  // 원2가 떨어지는 속도
float speed3 = random(8, 10);  // 원3이 떨어지는 속도
float speed4 = random(12, 14);  // 원4가 떨어지는 속도

float speed_s = random(12, 15);  // special score 원이 떨어지는 속도
float speed_b= random(12, 15);  // 폭탄원이 떨어지는 속도

circle circle1 = new circle(random(5, width-5), 0, speed1, 1);
circle circle2 = new circle(random(5, width-5), 0, speed2, 2);
circle circle3 = new circle(random(5, width-5), 0, speed3, 3);
circle circle4 = new circle(random(5, width-5), 0, speed4, 4);
circle circle_special = new circle(random(5, width-5), 0, speed_s, 5);
circle circle_bomb = new circle(random(5, width-5), 0, speed_b, 6);


void setup() {
  size(1000, 700);
  background(0, 0, 0);

  bgm= new SoundFile(this, "Fun Kid - Quincas Moreira.mp3");
  bgm.loop();
  //score_sound= new SoundFile(this,"Cartoon Boing.mp3");
  //miss_sound= new SoundFile(this,"Beep Short.mp3");
  //crack_sound= new SoundFile(this,"Glass Windows Crashing.mp3");
}


void draw() {
  background(0);

  // 떨어지는 원
  circle1.update();
  circle1.draw();
  apple();
  circle2.update();
  circle2.draw();
  bomb();
  circle3.update();
  circle3.draw();
  watermelon();
  circle4.update();
  circle4.draw();
  cherry();
  circle_special.update();
  circle_special.draw();
  grape();
  circle_bomb.update();
  circle_bomb.draw();
  tnt();


  // Draw the player

  basket();
  fill(255);


  // Draw the game time
  textAlign(RIGHT, TOP);
  text("Time: " + (gameTime), width - 10, 10);
  text("Best Score: "+(best_score), width-10, 80);



  // Special Score Code

  if (circle_special.getY() > height - BASKET_SIZE/2) {
    float x5 = circle_special.getX();
    if (x5 > mouseX - BASKET_SIZE/2 && x5 < mouseX + BASKET_SIZE/2) {
      if (circle_special.num%4==0) {
        score = score*2;
        //score_sound.play();
      }
    } else {
      misses += 0;
    }
  }

  if (circle_bomb.getY() > height - BASKET_SIZE/2) {
    float x6 = circle_bomb.getX();
    if (x6 > mouseX - BASKET_SIZE/2 && x6 < mouseX + BASKET_SIZE/2) {
      if (circle_special.num%3==0) {
        score = score/2;
        //crack_sound.play();
      }
    } else {
      misses += 0;
    }
  }

  // Check for collision with circle1

  if (circle1.getY() > height - BASKET_SIZE/2) {
    float x1 = circle1.getX();
    if (x1 > mouseX - BASKET_SIZE/2 && x1 < mouseX + BASKET_SIZE/2) {
      score += 10;
      //score_sound.play();
    } else {
      misses += 1;
      //miss_sound.play();
    }
  }

  // Check for collision with circle2

  if (circle2.getY() > height - BASKET_SIZE/2) {
    float x2 = circle2.getX();
    if (x2 > mouseX - BASKET_SIZE/2 && x2 < mouseX + BASKET_SIZE/2) {
      score -= 20;
      //crack_sound.play();
    } else {
      score += 10;
      //score_sound.play();
    }
  }


  // Check for collision with circle3

  if (circle3.getY() > height - BASKET_SIZE/2) {
    float x3 = circle3.getX();
    if (x3 > mouseX - BASKET_SIZE/2 && x3 < mouseX + BASKET_SIZE/2) {
      score += 30;
      //score_sound.play();
    } else {
      misses += 1;
       //miss_sound.play();
    }
  }
  // Check for collision with circle4

  if (circle4.getY() > height - BASKET_SIZE/2) {
    float x4 = circle4.getX();
    if (x4 > mouseX - BASKET_SIZE/2 && x4 < mouseX + BASKET_SIZE/2) {
      score += 40;
      //score_sound.play();
    } else {
      misses += 1;
      //miss_sound.play();
    }
  }





  // Draw the score and misses
  textAlign(LEFT, TOP);
  textSize(20);
  fill(255, 255, 255);
  text("Score: " + score, 10, 10);
  text("Misses: " + misses, 10, 40);

  // Check for game over
  if (gameTime == 1500||misses==50||score<0) {
    BASKET_SIZE=0;
    textAlign(CENTER, CENTER);
    textSize(100);
    fill(255, 255, 255);
    text("Game Over", width/2, height/2);
    if (score>=best_score) {
      best_score=score;
      textAlign(CENTER, CENTER);
      textSize(30);
      fill(255, 0, 255);
      text("CONGRATULATION!! BEST SCORE!!", width/2, height/2+100);
    }
    if (mousePressed) {
      reset();
    }
  } else {
    gameTime++;
  }
}

// Reset the game
void reset() {
  score = 0;
  misses = 0;
  gameTime = 0;
  BASKET_SIZE=50;
  circle1.num=0;
  circle2.num=0;
  circle3.num=0;
  circle4.num=0;
  circle_special.num=1;
  circle_bomb.num=1;
}

// circle class
class circle {
  float x, y;  // 위치
  float speed;  // 떨어지는 속도
  float radius = 100;  // 반지름
  float col=0;
  int num=1;

  circle(float x, float y, float speed, float col) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.col=col;
  }

  void update() {
    // 화면 밖으로 원이 나가면 다시 랜덤한 위치로 보내기
    if (y > height - radius/5) {
      x = random(width);
      y = -radius;
      num+=1;
    }
  }

  void draw() {
    if (col==5) {
      if (num%4==0) {
        fill(0, 0, 0);
        radius=100;
      } else {
        fill(0, 0, 0);
        radius=0;
      }
    } else if (col==6) {
      if (num%3==0) {
        fill(0, 0, 0);
        radius=100;
      } else {
        fill(0, 0, 0);
        radius=0;
      }
    } else {
      fill(0, 0, 0);
    }
    circle(x, y, radius);
    y+=speed;
  }
  float getX() {
    return x;
  }

  float getY() {
    return y;
  }
  int num() {
    return num;
  }
}
