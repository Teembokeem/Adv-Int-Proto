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
        grounds.add(new Soil(i, j));    
      }
      
      if (i == sizeX - 1) {
        println("hello done, length of array...." + grounds.size());
      }
    }
  }
  
  
  //Methods
  void show() {
    for (int i = 0; i < sizeX; i++) {
        println("hello " + grounds.get(i).soilType() + " " + grounds.get(i).soilImg());
        grounds.get(i).show();    
      
       if (i == sizeX - 1) {
        println("hello done, length of array...." + grounds.size());
      } 
    }
  }
  
  void rollGrid() {
  
  }
} 
