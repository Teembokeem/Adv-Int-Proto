class Plant {
  //variables
  String[] plantTypes = {"weed", "flower", "fruit"};
  String[] plantImgs = {"weed.png", "flower.png", "fruit.png"};
  float posX, posY;
  int numAge; // in days
  String Age, plantType = "";
  PImage plantImg;
  float[] coords = {posX, posY};

  //constructor
  Plant(float _pX, float _pY) {
    posX = _pX;
    posY = _pY;
    this.plantType = rollPlant();
    this.plantImg = loadImage(plantType + ".png");
    plantImg.resize(75, 75);
  }
  
  
  //Methods
  void show() {
    image(plantImg, convertGridPos(posX), convertGridPos(posY));
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
  
  float convertGridPos(float _gridPos) {
    //println("returning value: " + _gridPos * 100);
    return _gridPos * 100 + 12.5;
  }
  
  
  float[] gridCoords() {
    return coords;
  }
} 
