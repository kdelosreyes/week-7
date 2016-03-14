class Ball {
  float x;
  float y;
  float radius;
  float xSpeed;
  float ySpeed;
  void move() {
    x = x + xSpeed;
    y = y + ySpeed;
  }

  void display() {
    
    noStroke();
    ellipse(x, y, radius*2, radius*2);
    stroke(random(255),random(255),random(255));
    line(x,y,x*7,y*7);
    
  }

  void bounce() {
    if (x - radius < 0 || x + radius > width) {
      xSpeed = -xSpeed;
    }
    if (y - radius < 0 || y + radius > height) {
      ySpeed = -ySpeed;
    }
  }
  void randomColor() {
   fill(color(random(255),random(255),random(255)));
  
  }
}

Ball[] b = new Ball[1000];

void setup() {
  size(500, 500);
  background(255);

  for (int i = 0; i < b.length; i = i+1) {
    b[i] = new Ball();

    b[i].radius = 10;

    b[i].x = width/2;
    b[i].y = height/2;

    b[i].xSpeed = random(-3, 3);
    b[i].ySpeed = random(-3, 3);
  }
}

void draw() {
  background(255);

  for (int i = 0; i < b.length; i = i+1) {
    b[i].display();
    b[i].move();
    b[i].bounce();
    b[i].randomColor();
  }
}
