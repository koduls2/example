Circle[] circles1 = new Circle[50];  // 50개의 원1
Circle[] circles2 = new Circle[50];  // 50개의 원2

float speed1 = random(8,10);  // 떨어지는 속도
float speed2 = random(2,4);  // 떨어지는 속도

int last_fall_time = 0;  // 마지막으로 떨어진 시간
int circle_index = 0;  // 현재 떨어지는 원의 인덱스

void setup() {
  size(1000, 700);
  background(255);
  
  // 처음에는 화면 밖에 모든 원이 있도록 설정
  for (int i = 0; i < 50; i++) {
    circles1[i] = new Circle(random(width), 0, speed1);
    circles2[i] = new Circle(random(width), 0, speed2);
  }
}

void draw() {
  background(255);
  
  // 떨어지는 원
  circles1[circle_index].update();
  circles1[circle_index].draw();
  circles2[circle_index].update();
  circles2[circle_index].draw();

}

void dropCircle1() {
  // 랜덤한 위치에서 원1을 떨어뜨리기
  circles1[circle_index].x = random(width);
  circles1[circle_index].y = 0;
  circles1[circle_index].speed = random(8, 10);
}

void dropCircle2() {
  // 랜덤한 위치에서 원2을 떨어뜨리기
  circles2[circle_index].x = random(width);
  circles2[circle_index].y = 0;
  circles2[circle_index].speed = random(2, 4);
}

class Circle {
  float x, y;  // 위치
  float speed;  // 떨어지는 속도
  float radius = 20;  // 반지름
  
  Circle(float x, float y, float speed) {
    this.x = x;
    this.y = y;
    this.speed = speed;
  }
  
  void update() {
    // 화면 밖으로 원이 나가면 다시 랜덤한 위치로 보내기
    if (y > height - radius) {
      x = random(width);
      y = -radius;
    }
  }
  
  void draw() {
    circle(x, y, radius*2);
    y+=speed;
  }
}
