color c1 = color(250);
PImage pic;
int corX,
    corY,
    corZ,
    gridSize = 1;

void setup() {
  size(640, 480, P3D);
  pic = loadImage("turtle-crossing.jpg");
}

void draw() {
  background(0, 0, 0);
  
  pic.resize(width, height); //IMPORTANT
  
  if (mousePressed) {
    translate(width/2, height/2);
    rotateY(map( mouseX, 0, width, PI, -PI));
    translate(-width/2, -height/2);
  }
  
  noStroke();
  rectMode(CENTER);
  
  //translate(0, 0, -200);
  //image(pic, 0, 0, width, height);
  //translate(0, 0, 200);
  
  for ( int i = 0; i < width/gridSize; i++ ) { //<>//
    for( int j = 0; j < height/gridSize; j++ ) {
      color cVal = pic.get(gridSize*i + gridSize/2, gridSize*j + gridSize/2);
      float bVal = brightness(cVal);
      fill(cVal);
      corZ = int(map(bVal, 0, 255 , -100, 0));
      
      translate(0, 0, corZ);
      rect( gridSize*i + gridSize/2, gridSize*j + gridSize/2, 8, 8);
      translate(0, 0, -corZ);
      
    }
  }
  
  
  
}