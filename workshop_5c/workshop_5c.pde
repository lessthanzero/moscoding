int x = 10;
Circle a;

void setup() {
  size(640, 480);
  frameRate(10);
  a = new Circle(width/2, height/2, 100, 255);
}

void draw() {
  background(0);
  ellipseMode(CENTER);
  a.display();
  a.fall();
  a.changeColor();
  
}


class Circle {
  
  float x, y, d;
  color clr;
  
  Circle( float xpos, float ypos, float diam, color fill ) {
    
    x = xpos;
    y = ypos;
    d = diam;
    clr = fill;
    
  }
  
  void display() {
    fill(clr);
    noStroke();
    ellipse(x, y, d, d);
  }
  
  void changeDiameter() {
    d = random(10, 100);
  }
  
  void fall() {
    y += 1;
  }
  
  void cursorGravity() {
  
  }
  
  void changeColor() {
    
    if ( abs(mouseY - y) < 10 ) {
      clr = color(255, 0, 0);
    } else {
      clr = color(255, 255, 255);
    }
    
  }

}