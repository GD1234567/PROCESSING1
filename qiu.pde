int num = 3000;
float radius = 170;
float dist = 120;

float angle1, angle2;

void setup() {
  size(1000, 1000);
  smooth();
  //noLoop();
}

void draw() {
  background(0);

  translate(mouseX, mouseY);
  int i = 0;
  while (i < num) {
    stroke(255,40);
    strokeWeight(random(1,1));

    float angle1 = random(0, TWO_PI);
    float x1 = sin(angle1) * radius;
    float y1 = cos(angle1) * radius;
    float angle2 = random(0, TWO_PI);
    float x2 = sin(angle2) * radius;
    float y2 = cos(angle2) * radius;

    noFill();
    bezier(x1, y1, x1+random(-dist, dist), y1+random(-dist, dist), x2+random(-dist, dist), y2+random(-dist, dist), x2, y2);
    
    i = i + 1;
  }
}