class Soil {
  //variables
  String[] soilTypes = {"loamy", "rocky"};
  String[] soilImgs = {"Loamy.png", "Rocky.png"};
  float posX, posY;
  String soilType = "";
  PImage soilImg;

  //constructor
  Soil(float _pX, float _pY) {
    posX = _pX;
    posY = _pY;
    int randomNum = floor(random(0, soilTypes.length - 1));
    soilType = soilTypes[randomNum];
    soilImg = loadImage(soilImgs[randomNum]);
  }
  
  //Methods
  void show() {
    image(soilImg, posX, posY);
  }
} 
