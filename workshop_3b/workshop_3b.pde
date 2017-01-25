color c1 = color(128, 64, 0);
PImage pic;
int gridSize = 10;

void setup() {
  size(640, 400);
  pic = requestImage("picture.jpg");
}

void draw() {
  background(0, 0, 0);
  pic.loadPixels();
  //image(pic, 0, 0, 640, 400);
  
  rectMode(CENTER);
  
  for (int i = 0; i < width/gridSize; i++) {
    
    for (int j = 0; j < height/gridSize; j++) {
      
      float cVal = brightness( pic.get(gridSize*i + gridSize/2, gridSize*j + gridSize/2));
      fill(cVal);
      rect(i*gridSize + gridSize/2, j*gridSize + gridSize/2, 8, 8);
      
    }
  
  }
  
  updatePixels();
  
}