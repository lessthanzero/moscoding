color c1 = color(250);
PImage pic;
int corX,
    corY,
    gridSize = 10;

void setup() {
  size(640, 480);
  pic = requestImage("turtle-crossing.jpg");
}

void draw() {
  background(0, 0, 0);
  
  //blendMode(REPLACE);
  
  //tint(250, 0, 0);
  
  //image(pic, 0, 0, 640, 480);
  //if("hello" instanceof String) {
  // println("True");    
  //}
  
  fill(0);
  noStroke();
  ellipse(width/2, height /2, 50, 50);
  
  stroke(255);
  rectMode(CENTER);
    
  pic.loadPixels();
  
  for ( int i = 0; i < width/gridSize; i++) { //<>// //<>//
    
    for( int j = 0; j < height/gridSize; j++) {
      
      fill(brightness( pic.get(gridSize*i + gridSize/2, gridSize*j + gridSize/2)));
      rect( gridSize*i + gridSize/2, gridSize*j + gridSize/2, 8, 8);
    }
  }
  
  //loadPixels();
  
  println("R:" + red(pic.get(corX, corY)));
  println("G:" + green(pic.get(corX, corY)));
  println("R:" + red(pic.get(corX, corY)));
  
  println(brightness(pic.get(corX, corY)));
  
  updatePixels();
  
}