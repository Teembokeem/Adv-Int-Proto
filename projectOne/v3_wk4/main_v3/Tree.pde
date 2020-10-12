class Tree {
  float nodeLength = 55.0;
  float nodeWidth = nodeLength * 0.1;
  int level = 5;
  ArrayList<PShape> tree = new ArrayList<PShape>();
  ArrayList<Float> nRotations = new ArrayList<Float>();
  PShape node;
  float[] treeRoot;

  Tree(int _pX, int  _pY) {

    treeRoot = new float[2];
    treeRoot[0] = _pX;
    treeRoot[1] = _pY;

    translate(mouseX, mouseY);
    println("called");
    createNode(nodeLength, nodeWidth, level);
  }

  void createNode(float nodeLength, float nodeWidth, int level) {
    //float c = random(100, 175);
    float c = level * 25;
    float extender = 0.7;
    stroke(c, 0, 255 - c);
    strokeWeight(float(level)* 0.5);

    node = createShape();
    node.beginShape();

    //create base
    node.vertex(nodeWidth, 0, -nodeWidth);
    node.vertex(nodeWidth, 0, nodeWidth);
    node.vertex(-nodeWidth, 0, nodeWidth);
    node.vertex(-nodeWidth, 0, -nodeWidth);

    node.vertex(nodeWidth, 0, -nodeWidth);
    //create side1
    node.vertex(nodeWidth * extender, -nodeLength, -nodeWidth);
    node.vertex(nodeWidth * extender, -nodeLength, nodeWidth);
    node.vertex(nodeWidth, 0, nodeWidth);

    node.vertex(nodeWidth, 0, -nodeWidth);
    //create side2
    node.vertex(nodeWidth * extender, -nodeLength, -nodeWidth);
    node.vertex(-nodeWidth * extender, -nodeLength, -nodeWidth);
    node.vertex(-nodeWidth, 0, -nodeWidth);

    node.vertex(nodeWidth, 0, -nodeWidth);
    //move up
    node.vertex(-nodeWidth, 0, -nodeWidth);
    node.vertex(-nodeWidth, 0, nodeWidth);

    node.vertex(-nodeWidth * extender, -nodeLength, nodeWidth);
    //top base
    node.vertex(nodeWidth * extender, -nodeLength, nodeWidth);
    node.vertex(nodeWidth * extender, -nodeLength, -nodeWidth);
    node.vertex(-nodeWidth * extender, -nodeLength, -nodeWidth);

    node.vertex(-nodeWidth * extender, -nodeLength, nodeWidth);
    //face1
    node.vertex(-nodeWidth * extender, -nodeLength, -nodeWidth);
    node.vertex(-nodeWidth, 0, -nodeWidth);
    node.vertex(-nodeWidth, 0, nodeWidth);

    node.vertex(-nodeWidth * extender, -nodeLength, nodeWidth);
    //move up
    node.vertex(nodeWidth * extender, -nodeLength, -nodeWidth);
    node.vertex(nodeWidth, 0, nodeWidth);
    node.vertex(-nodeWidth, 0, nodeWidth);

    node.vertex(-nodeWidth * extender, -nodeLength, nodeWidth);
    //println("where we at", nodeLength);


    node.endShape();
    //tree.add(node);
    shape(node, 0, 0);


    if (level>0) {
      level--;

      for (int t = 0; t < round(2); t++) {
        pushMatrix();
        translate(0, -nodeLength, 0);
        //float thisRotate = random(-PI/8, PI/8);
        float thisRotate = t %2 == 0 ? -PI/8 : PI/8;
        rotate(thisRotate);
        nRotations.add(thisRotate);

        createNode(nodeLength*0.7, nodeWidth * extender, level);
        popMatrix();
      }
    } else {

      //grow a leaf:
      //if(random(1)> 0.8) {
      //  pushMatrix
      //}
    }
  }

  void display() {
    pushMatrix();
    translate(treeRoot[0], treeRoot[1]);
    //println("tee size", tree.size(), tree.get(0));
    createNode(nodeLength, nodeWidth, level);

    popMatrix();
  }
}
