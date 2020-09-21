//Project 1 - 09.14.2020
//instantiate variables
float posX = 100.0;
float posY = 100.0;
float d = 100;
float velX = 3, velY = 3;
float wildCard = 0;
float pV = millis();
// boolean dirX = true; //true means left

// in preparation
void setup() {
  size(500, 700);
}

// this is the main loop
void draw() {
  background(192,155, 0);
  circle(posX,posY, d);
  
  float cV = millis() % 1000;
  if(pV > cV) {
    wildCard = random(-5,5);
    velX *= wildCard;
    println(wildCard);
  }
  
  
  if (posX + d/2 >= width || posX - d/2 <= 0) {
    velX *= -1;
  }
   posX += velX;
  
  if (posY + d/2 >= height || posY - d/2 <= 0) {
    velY *= -1;
  }
   posY += velY;
   
   pV = cV;
  
}
