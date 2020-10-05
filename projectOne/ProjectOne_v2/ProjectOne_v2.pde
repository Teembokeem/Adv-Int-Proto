// Project One : Lindenmayer Plant
// Based on MT4_Lindenmayer - plant , openprocessing.org/sketch/470350

// Drawer variables
float[] x, y; // position of drawer
int[] currentangle; // direction of drawer
int step = 3, angle = 25; // movement and turn multiplier


// Lindenmayer variables
String[] theString = {"A"}; // "axiom"/start of string
int numLoops = 6; // number of loops
String[] ruleMatcher = {"A", "F"}; // array for matching input
String[] ruleEncoder = {"F[-A][A]F[-A]+FA", "FF"}; // array for decoding ruleMatch

void setup() {
  println("matcher " + ruleMatcher[0]);
  println("encoder " + ruleEncoder[1]);
  size(800, 800);
  background(255, 255, 255);
}

void draw() {
  
}
