class Soil {
  //variables
  String[] soilTypes = {"loamy", "rocky"};
  String[] soilImgs = {"Loamy.png", "Rocky.png"};
  float posX, posY;
  float[] coords = {posX, posY};
  String soilType = "";
  PImage soilImg;
  int randomNum;

  //constructor
  Soil(float _pX, float _pY) {
    posX = _pX;
    posY = _pY;
    randomNum = floor(random(0, soilTypes.length));
    this.soilType = soilTypes[randomNum];
    this.soilImg = loadImage(soilImgs[randomNum]);;
    soilImg.resize(100,100);
  }
  
  //Methods
  void show() {
    image(soilImg, convertGridPos(posX), convertGridPos(posY));
  }
  
  float convertGridPos(float _gridPos) {
    //println("returning value: " + _gridPos * 100);
    return _gridPos * 100;
  }
  
  String soilType() {
    return soilType;
  }
  
  String soilImg() {
    return soilImgs[randomNum];
  }
  
  float[] gridCoords() {
    return coords;
  }
} 
