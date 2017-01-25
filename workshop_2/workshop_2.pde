int z = 100;
color Color;
int[] style = new int[3];
char saveBtn = 's';
float positionX = 50;
int advance = 100,
    frameThreshold = 5;
boolean forward = true; //<>//
int diam = 100;

void setup() {
  
  size(640, 480);
  frameRate(30);
  smooth(4);
  
  background(0);
  
}

void draw() {
  
  ellipseMode( CENTER ); //<>//
  
  Color = color( random(0, 255), random(0, 255), random(0, 255) );
  fill( Color );
  noStroke();
  println(diam);
  ellipse(pmouseX, pmouseY, random(10, diam), random(10, diam));
  
}