int d = 10;
PImage pic;

void setup() {
  size(640, 360, P3D);
  pic = requestImage("picture.jpg");
}

void draw() {
  background(0);
  noFill();
  imageMode(CORNER);
  image(pic, 50, 50, 300, 300);
  //stroke(255, 102, 0);
  //stroke(255);
  //scale(4);
  //bezier(85, 40, 30, 10, 90, 90, 15, 80);
  //scale(0.25);
  fill(255, 0, 0);
  //stroke(255);
  strokeWeight(1);
  
  scale(2);
  
  //rotateX(map(mouseY, 0, height, -10, 10));
  
  
  beginShape();
    texture(pic);
    textureMode(NORMAL);
    vertex(50, 10, 10, 0, 0);
    vertex(40, 30, 20, 1, 0);
    vertex(120, 120, 20, 1, 1);
    vertex(100, 100, 30, 0, 1);
  endShape(CLOSE);
  
  fill(255);
  
  //translate(width/2, height/2, 10);
  //ellipse(10, 10, 30, 30);
  //translate(-width/2, -height/2, -10);
  
  //translate(20, 20, 0);
  //sphere(50);
  //translate(-width/2, -height/2, -100);
  
  /*translate(0, 0, map(mouseX, 0, width, -200, 200));
  rotate(map(mouseY, 0, height, -10, 10));
  box(150, 100, 100);*/
  
  //sphereDetail( int(map(mouseX, 0, width, 0, 100)) );
}