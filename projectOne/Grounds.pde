class Grounds {
  //variables
  int sizeX, sizeY, pX, pY, area, startSeed;
  ArrayList<Soil> grounds = new ArrayList<Soil>();
  ArrayList<Plant> plants = new ArrayList<Plant>();

  //constructor
  Grounds(int _sX, int _sY) {
    sizeX = _sX;
    sizeY = _sY;
    area = sizeX * sizeY;
    startSeed = floor(random(area / 2, area));
    
    for (int i = 0; i < sizeX; i++) {
      for(int j = 0; j < sizeY; j++) {
        //println("grid coord " + i + " " + j);
        grounds.add(new Soil(i, j));
      
        if (random(1) > 0.6) {
          plants.add(new Plant(i, j));
        }        
        
      }
      
      //if (i == sizeX - 1) {
        //println("hello done, length of array...." + grounds.size());
        //println("hello done, length of plants...." + plants.size());

      //}
    }
  }
  
  
  //Methods
  void show() {
    for (int i = 0; i < grounds.size(); i++) {
        println("hello " + grounds.get(i).soilType + " " + grounds.get(i).gridCoords()[1]);
        grounds.get(i).show();    
      
       if (i == sizeX - 1) {
       //println("hello done, length of array...." + grounds.size());
      } 
    }
    
    for (int i = 0; i < plants.size(); i++) {
        //println("hello " + grounds.get(i).soilImg() + " " + grounds.get(i).gridCoords()[0]);
        plants.get(i).show();    
      
       if (i == sizeX - 1) {
       //println("hello done, length of array...." + grounds.size());
      } 
    }
  }
} 
