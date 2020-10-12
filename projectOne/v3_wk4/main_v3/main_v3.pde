// project one: Plant l-system
// version 3

float angle = 0.0;

float currX = width/2, currY = height/2;

ArrayList<Tree> trees = new ArrayList<Tree>();
//float nodeLength, nodeWidth;
//int level = 5;

void setup() {
  size(800, 800, P3D);
}

void draw() {
  background(0);
  noFill();

  for(int i =0;i < trees.size(); i++) {
    Tree thisTree = trees.get(i);
    thisTree.display();
  }
  camera(mouseX, mouseY, (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2, 0, 0, 1, 0);
}

void mousePressed() {
  Tree newTree = new Tree(mouseX, mouseY);
  trees.add(newTree);
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
