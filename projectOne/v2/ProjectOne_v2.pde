// Project One : Lindenmayer Plant
// Based on MT4_Lindenmayer - plant , openprocessing.org/sketch/470350

// Drawer variables
float[] x = {}, y = {}; 
// starting position of drawer
float[] currentAngle = {-70}; // starting direction of drawer
int step = 5, angle = 25; // starting movement and turn multiplier
boolean isClicked = false;
// Lindenmayer variables
String theString = "A"; // "axiom"/start of string
int numLoops = 8; // number of loops
char[] ruleMatcher = {'A', 'F'}; // array for matching input
String[] ruleEncoder = {"F[-A][A]F[-A]+FA", "FF"}; // array for decoding ruleMatch
int whereInString = 0; //track L-system node
lindenmayer plant;

void setup() {
  size(800, 800); 
  background(0, 0, 0);
  stroke(0, 0, 0);
  plant = new lindenmayer(theString);

  x = append(x, width / 3);
  y = append(y, height);
  float x1 = x[x.length - 1] + 70*cos(radians(currentAngle[currentAngle.length - 1]));
  float y1 = y[y.length - 1] + 70*sin(radians(currentAngle[currentAngle.length - 1]));
  line(x[x.length - 1], y[y.length - 1], x1, y1);
  x[x.length - 1] = x1;
  y[y.length - 1] = y1;
}

void draw() {
  if (isClicked) {
    for (int i = 0; i < 300; i++) {
      //println("length: ", plant.code.length());
  
      isClicked = false;

      if (i + whereInString > plant.code.length() - 1) { 
        whereInString = 0;
        grow(plant.code.charAt(i));
      } else {
           grow(plant.code.charAt(i + whereInString));
           whereInString++;
      }
    }
  }
}

void grow(char _s) {
  if (_s == 'F' || _s == 'A') {
    stroke(floor(random(0, 255)), floor(random(0, 255)), floor(random(0, 255)));
    //println("f computed");
    float x1 = x[x.length - 1] + step*cos(radians(currentAngle[currentAngle.length - 1]));
    float y1 = y[y.length - 1] + step*sin(radians(currentAngle[currentAngle.length - 1]));
    line(x[x.length - 1], y[y.length - 1], x1, y1);
    //println("before append", x[x.length - 1]);
    //println("to be appended: ", x1);
    x[x.length - 1] = x1;
    y[y.length - 1] = y1;
    //println("after append", x[x.length - 2 != 0 ? x.length - 2 : 0], x[x.length - 1]);
  } else if (_s == '+') {
    //println("going left/: ", currentAngle[currentAngle.length - 1]);
    currentAngle[currentAngle.length - 1] -= angle;
    //println("now: ", currentAngle[currentAngle.length - 1]);
  } else if (_s == '-') {
    //println("going right: ", currentAngle[currentAngle.length - 1]);
    currentAngle[currentAngle.length - 1] += angle;
    //println("now: ", currentAngle[currentAngle.length - 1]);
  } else if (_s == '[') {
    //println("new node");
    //println("x before: ", x[x.length - 1]);
    float x1 = x[x.length -1];
    float y1 = y[y.length - 1];
    float c = currentAngle[currentAngle.length - 1];
    x = append(x, x1);
    y = append(y, y1);
    //println("x after: ", x[x.length - 1], x[x.length - 2]);

    currentAngle = append(currentAngle, c);
  } else if (_s == ']') {
    //println("closing node");
    //println("x before: ", x[x.length - 1], x[x.length - 2]);
    x = shorten(x);
    y = shorten(y);
    currentAngle = shorten(currentAngle);
    //println("x after: ", x[x.length - 1], x[x.length - 2]);
  }
}

void mousePressed() {

  isClicked = true;
}
