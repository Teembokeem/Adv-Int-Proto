// Example by Tom Igoe 

import processing.serial.*; 

Serial myPort;    // The serial port
String inString = "";  // Input string from serial port
int lf = 10;      // ASCII linefeed 

float diam = 0.0;
float pX, pY;
boolean show = false;

void setup() { 
  size(800, 800); 
  // You'll need to make this font with the Create Font Tool 
  // List all the available serial ports: 
  printArray(Serial.list()); 
  // I know that the first port in the serial list on my mac 
  // is always my  Keyspan adaptor, so I open Serial.list()[0]. 
  // Open whatever port is the one you're using. 
  myPort = new Serial(this, Serial.list()[6], 9600); //has to match baudarate from serial board app
  myPort.bufferUntil(lf); 

  pX = width/2;
  pY = height/2;
} 

void draw() { 
  background(0); 

  //printArray(inString);

  if (show) {
    fill(252, 70,0);
  } else {
    fill(0);
  }
  //float rad = map(float(inString), 0, 4000, 0, width);
  circle(pX, pY, diam);
  
} 

void serialEvent(Serial p) { 
  inString = p.readString();
  println(inString);
  if (inString != null) {
    String[] data = split(trim(inString), " | ");
    if (data.length == 4) {
      show = boolean(data[0]);
      diam = map(float(data[1]), 0, 4096, 0, width);
      pX = map(float(data[2]), 0, 4096, 0, width);
      pY = map(float(data[3]), 0, 4096, 0, height);
    }
  }
} 
