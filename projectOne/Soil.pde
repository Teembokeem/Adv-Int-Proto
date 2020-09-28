class Soil {
  //variables
  String[] soilTypes = {"loamy", "rocky"};
  String[] soilImgs = {"Loamy.png", "Rocky.png"};
  float posX, posY;
  float[] coord = {posX, posY};
  String soilType = "";
  PImage soilImg;
  int randomNum;

  //constructor
  Soil(float _pX, float _pY) {
    posX = _pX;
    posY = _pY;
    randomNum = floor(random(0, soilTypes.length - 1));
    soilType = soilTypes[randomNum];
    soilImg = loadImage(soilImgs[randomNum]);
  }
  
  //Methods
  void show() {
    image(soilImg, convertGridPos(posX), convertGridPos(posY));
  }
  
  float convertGridPos(float _gridPos) {
    return _gridPos * 100;
  }
  
  String soilType() {
    return soilType;
  }
  
  String soilImg() {
    return soilImgs[randomNum];
  }
  
  float[] returnGridCoord() {
    return coord;
  }
} 
