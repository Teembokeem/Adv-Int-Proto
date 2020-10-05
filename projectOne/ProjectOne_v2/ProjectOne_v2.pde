// Project One : Lindenmayer Plant
// Based on MT4_Lindenmayer - plant , openprocessing.org/sketch/470350

// Drawer variables
float[] x = {float(width / 3)}, y = {float(height)}; 
// starting position of drawer
int[] currentAngle = {-70}; // starting direction of drawer
int step = 3, angle = 25; // starting movement and turn multiplier


// Lindenmayer variables
String[] theString = {"A"}; // "axiom"/start of string
int numLoops = 6; // number of loops
String[] ruleMatcher = {"A", "F"}; // array for matching input
String[] ruleEncoder = {"F[-A][A]F[-A]+FA", "FF"}; // array for decoding ruleMatch
int whereInString = 0; //track L-system node
lindenmayer lindenmayer = new lindenmayer(theString);

void setup() {
  //println("matcher " + ruleMatcher[0]);
  //println("encoder " + ruleEncoder[1]);
  size(800, 800); 
  background(255, 255, 255);
  stroke(255, 255, 255);
}

void draw() {
}
