// Example by Tom Igoe 
 
import processing.serial.*; 
 
Serial myPort;    // The serial port
String inString = "";  // Input string from serial port
int lf = 10;      // ASCII linefeed 
 
void setup() { 
  size(800,800); 
  // You'll need to make this font with the Create Font Tool 
  // List all the available serial ports: 
  printArray(Serial.list()); 
  // I know that the first port in the serial list on my mac 
  // is always my  Keyspan adaptor, so I open Serial.list()[0]. 
  // Open whatever port is the one you're using. 
  myPort = new Serial(this, Serial.list()[6], 9600); //has to match baudarate from serial board app
  myPort.bufferUntil(lf); 
} 
 
void draw() { 
  background(0); 
  
  println(inString);
  
  fill(252, 70, 0);
  float rad = map(float(inString), 0, 4000, 0, width);
  circle(width/2, height/2, rad);
} 
 
void serialEvent(Serial p) { 
  inString = p.readString(); 
} 
