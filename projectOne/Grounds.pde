class Grounds {
  //variables
  int sizeX, sizeY;
  int pX, pY;
  ArrayList<Soil> grounds = new ArrayList<Soil>();


  //constructor
  Grounds(int _sX, int _sY) {
    sizeX = _sX;
    sizeY = _sY;
    for (int i = 0; i < sizeX; i++) {
      for(int j = 0; j < sizeY; j++) {
        grounds.add(new Soil(sizeX * 100, sizeY * 100));    
      }
    }
  }
  
  
  //Methods
  void show() {
  
  }
  
  void convertGridPos() {
  
  }
  
  void rollGrid() {
  
  }
} 