float posX = 100.0;
float posY = 100.0;
float velXY = 3;
int count = 1;

void setup() {
  size(500, 700);
}

void draw() {
  circle(posX,posY, 100);
  posX += velXY;
  posY += velXY;
  println("pos x: " + posX);
  println("pos y: " + posY);
  println("Loop Count: " + count);
  count++;
  
}
