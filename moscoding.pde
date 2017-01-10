int cellSize = 20;
PShape moscoding;
int fileWidth = 502;
int fileHeight = 61;

void setup() {
  size(1200, 630, P3D);
  moscoding = loadShape("moscoding.svg");
  frameRate(25);
  smooth(4);
}

void draw() {
  
  blendMode(ADD);
  
  background(0);
  moscoding.disableStyle();
  fill(255);
  noStroke();
  
  
  shape(moscoding, width/2 - fileWidth/2, height/2 - fileHeight/2, fileWidth, fileHeight);
  
  ambientLight(random(64, 255), random(64, 255), random(64, 255));
  
  for (int k = 0; k < 10; k++) {
    fill(255, random(0, 255));
    rectMode(CENTER);
    float rsize = random(0, 100);
    rect(random(0+20, width-20), random(0+20, height-20), rsize, rsize);
  }
  
  for (int i = 0; i < width/cellSize; i++) {
    for (int j = 0; j < height/cellSize; j++) {
      fill(random(0, 255), random(0, 255), random(0, 255), random(128, 255));
      rectMode(CENTER);
      translate(-1*cellSize/2, -1*cellSize/2, random(-10, 10));
      rotate(random(0, PI));
      rect(1.5*i*cellSize, 1.5*j*cellSize, random(1, 100), random(2, 20), random(10, 100));
      translate(1*cellSize/2, 1*cellSize/2, random(-10, 10));
    }
  }
  saveFrame("######-frame.png");
}