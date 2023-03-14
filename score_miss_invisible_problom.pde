// Parameters
int BASKET_SIZE = 50;
int score = 0;
int misses = 0;
int gameTime = 0;
boolean gameOver = false;


circle[] circle1 = new circle[50];  // 50개의 원1
circle[] circle2 = new circle[50];  // 50개의 원2
circle[] circle3 = new circle[50];  // 50개의 원3
circle[] circle4 = new circle[50];  // 50개의 원3


float speed1 = random(2, 4);  // 원1이 떨어지는 속도
float speed2 = random(5, 7);  // 원2가 떨어지는 속도
float speed3 = random(8, 10);  // 원3이 떨어지는 속도
float speed4 = random(12, 14);  // 원4가 떨어지는 속도

int last_fall_time = 0;  // 마지막으로 떨어진 시간
int circle_index = 0;  // 현재 떨어지는 원의 인덱스

void setup() {
  size(1000, 700);
  background(0, 0, 0);

  // 처음에는 화면 밖에 모든 원이 있도록 설정
  for (int i = 0; i < 50; i++) {
    circle1[i] = new circle(random(5, width-5), 0, speed1, 1);
    circle2[i] = new circle(random(5, width-5), 0, speed2, 2);
    circle3[i] = new circle(random(5, width-5), 0, speed3, 3);
    circle4[i] = new circle(random(5, width-5), 0, speed4, 4);
  }
}

void draw() {
  background(0);

  // 떨어지는 원
  circle1[circle_index].update();
  circle1[circle_index].draw();
  circle2[circle_index].update();
  circle2[circle_index].draw();
  circle3[circle_index].update();
  circle3[circle_index].draw();
  circle4[circle_index].update();
  circle4[circle_index].draw();

  // Draw the player
  fill(255, 255, 255);
  rect(mouseX - BASKET_SIZE/2, height - BASKET_SIZE, BASKET_SIZE, BASKET_SIZE);


  // Draw the game time
  textAlign(RIGHT, TOP);
  text("Time: " + (gameTime), width - 10, 10);

  // Check for collision with circle1
  for (int i=0; i<50; i++) {
    if (circle1[i].getY() > height - BASKET_SIZE/2) {
      float x1 = circle1[i].getX();
      if (x1 > mouseX - BASKET_SIZE/2 && x1 < mouseX + BASKET_SIZE/2) {
        score += 10;
      } else {
        misses += 1;
      }
    }
  }
  // Check for collision with circle2
  for (int i=0; i<50; i++) {
    if (circle2[i].getY() > height - BASKET_SIZE/2) {
      float x2 = circle2[i].getX();
      if (x2 > mouseX - BASKET_SIZE/2 && x2 < mouseX + BASKET_SIZE/2) {
        score += 20;
      } else {
        misses += 1;
      }
    }
  }
  // Check for collision with circle3
  for (int i=0; i<50; i++) {
    if (circle3[i].getY() > height - BASKET_SIZE/2) {
      float x3 = circle3[i].getX();
      if (x3 > mouseX - BASKET_SIZE/2 && x3 < mouseX + BASKET_SIZE/2) {
        score += 30;
      } else {
        misses += 1;
      }
    }
  }
  // Check for collision with circle4
  for (int i=0; i<50; i++) {
    if (circle4[i].getY() > height - BASKET_SIZE/2) {
      float x4 = circle1[i].getX();
      if (x4 > mouseX - BASKET_SIZE/2 && x4 < mouseX + BASKET_SIZE/2) {
        score += 40;
      } else {
        misses += 1;
      }
    }
  }

  // Draw the score and misses
  textAlign(LEFT, TOP);
  textSize(20);
  fill(255, 255, 255);
  text("Score: " + score, 10, 10);
  text("Misses: " + misses, 10, 40);

  // Check for game over
  if (gameTime == 300||misses==10||score<0) {
    gameOver = true;
    textAlign(CENTER, CENTER);
    textSize(100);
    fill(255, 255, 255);
    text("Game Over", width/2, height/2);
    if ( mousePressed) {
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
  gameOver = false;
}

// circle class
class circle {
  float x, y;  // 위치
  float speed;  // 떨어지는 속도
  float radius = 40;  // 반지름
  float col;

  circle(float x, float y, float speed, float col) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.col=col;
  }

  void update() {
    // 화면 밖으로 원이 나가면 다시 랜덤한 위치로 보내기
    if (y > height - radius) {
      x = random(width);
      y = -radius;
    }
  }

  void draw() {
    if (col==1) {
      fill(255, 0, 0);
    } else if (col==2) {
      fill(0, 255, 0);
    } else if (col==3) {
      fill(0, 0, 255);
    } else if (col==4) {
      fill(255, 255, 0);
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
}
