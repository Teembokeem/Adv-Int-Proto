class Plant {
  //variables
  String[] plantTypes = {"weed", "flower", "fruit"};
  String[] plantImgs = {"weed.png", "flower.png", "fruit.png"};
  float posX, posY;
  int age; // in days
  String plantType = "";
  PImage plantImg;

  //constructor
  Plant(float _pX, float _pY) {
    posX = _pX;
    posY = _pY;
    plantType = rollPlant();
    plantImg = loadImage(plantType + ".png");
    plantImg.resize(100, 100);
  }
  
  
  //Methods
  void show() {
  
  }
  
  String rollPlant() {
    int randomNum = floor(random(0, 100));
      
    if (randomNum <= 14) {
      return plantTypes[0];
    } else if (randomNum <= 44) {
      return plantTypes[1];
    } else {
      return plantTypes[2];
    }
      
  }
} 
