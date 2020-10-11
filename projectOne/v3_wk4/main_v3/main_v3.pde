// project one: Plant l-system
// version 3
//import peasy.*;

//PeasyCam cam;

float angle = 0.0;
PShape s;
float currX = width/2, currY = height/2;
boolean shouldGrow = true;
void setup() {
  size(800, 800, P3D);
  background(0);
  //cam = new PeasyCam(this, 100);
  //cam.setMinimumDistance(50);
  //cam.setMaximumDistance(500);
  //noLoop();
}

void draw() {
  noFill();
  //stroke(255);
  translate(width/2, height, 0);
  //rotate object :
  //  rotateY(angle);
  //  angle +=0.1;
  //box(50); //replace with draw branch
  //rotate(random(-PI/8));
  //grow(100, 5);
  //rotate(random(PI/4));
  if (shouldGrow == true) {
    background(0);

    grow(100, 4);
  }
  camera(mouseX, mouseY, (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
}

void mousePressed() {
  //background(0);
  translate(mouseX, mouseY);
  grow(100, 5);
}

void grow(float nodeLength, int level) {
  //float c = random(100, 175);
  float c = 100;
  stroke(c, c/2, 0);
  strokeWeight(float(level)* 0.5);
  s = createShape();
  s.beginShape();



  pushMatrix();
  s.vertex(level*2, 0, -level*2);
  s.vertex(level*2, 0, level*2);
  s.vertex(-level*2, 0, level*2);
  s.vertex(-level*2, 0, -level*2);

  s.vertex(level*2, 0, -level*2);

  s.vertex(level*1.5, -nodeLength, -level*2);
  s.vertex(level*1.5, -nodeLength, level*2);
  s.vertex(level*2, 0, level*2);

  s.vertex(level*2, 0, -level*2);

  s.vertex(level*1.5, -nodeLength, -level*2);
  s.vertex(-level*1.5, -nodeLength, -level*2);
  s.vertex(-level*2, 0, -level*2);

  s.vertex(level*2, 0, -level*2);

  s.vertex(-level*2, 0, -level*2);
  s.vertex(-level*2, 0, level*2);

  s.vertex(-level*1.5, -nodeLength, level*2);

  s.vertex(level*1.5, -nodeLength, level*2);
  s.vertex(level*1.5, -nodeLength, -level*2);
  s.vertex(-level*1.5, -nodeLength, -level*2);

  s.vertex(-level*1.5, -nodeLength, level*2);

  s.vertex(-level*1.5, -nodeLength, -level*2);
  s.vertex(-level*2, 0, -level*2);
  s.vertex(-level*2, 0, level*2);

  s.vertex(-level*1.5, -nodeLength, level*2);

  s.vertex(level*1.5, -nodeLength, -level*2);
  s.vertex(level*2, 0, level*2);
  s.vertex(-level*2, 0, level*2);

  s.vertex(-level*1.5, -nodeLength, level*2);


  popMatrix();
  s.endShape();
  shape(s, 0, 0);

  if (level>0) {
    level--;

    for (int t = 0; t < round(2); t++) {
      pushMatrix();
      translate(0, -nodeLength);
      rotate(random(-PI/8, PI/8));
      grow(nodeLength*random(0.5, 1), level);
      popMatrix();
    }
  } else {
    shouldGrow = false;
    //grow a leaf:
    //if(random(1)> 0.8) {
    //  pushMatrix
    //}
  }
}
//void segment(float h, int level){
//  float c = random(100, 175);
//  stroke(c,c/2,0);
//  strokeWeight(float(level)*.5);
//  line(0,0,0,-h);

//  if(level>0){
//    level--;
//   for(int t = 0; t< round(2); t++){
//    pushMatrix();
//      translate(0,-h);
//      rotate(random(-PI/8,PI/8));
//      segment(h*random(.5,1), level);
//    popMatrix();
//   }
//  }
//  else{
//    if(random(1)>.8){ 
//      pushMatrix();
//        translate(0,-h);
//        rotate(random(-PI/8,PI/8));
//        float r = random(3,10);
//        fill(74, 199, 107,255);
//        ellipse(0,0,15,15);
//      popMatrix();
//    }
//  }   
//}
