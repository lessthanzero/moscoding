import processing.dxf.*;
import processing.pdf.*;
boolean record = false;

PShape cone;

void setup() {
  size(640, 480, P3D);
  cone = loadShape("cone.obj");
}

void draw() {
  
  if (record) {
    beginRaw(PDF, "scene.pdf");
  }
  
  fill(255);
  background(204);
  
  translate(width/2, height/2, 0);
  
  rotateZ(PI);
  
  scale(100);
  shape(cone);
  
  if (record) {
    endRaw();
    record = false;
  }
  
}

void keyPressed() {

  if (key == 'r') {
    record = true;
  }
  
}