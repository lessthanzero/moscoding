int x = 10, dm = 100;
Circle a;
color bg = color(0);

void setup() {
  size(640, 480);
  frameRate(10);
  a = new Circle(width/2, height/2, dm, 255);
}

void draw() {
  background(bg);
  ellipseMode(CENTER);
  a.display();
  a.fall();
  a.changeColor();
  bg = a.getColor();
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
    //println(clr);
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
    println(dm);
    if ( abs(mouseY - y) < 10 ) {
      clr = color(255, 0, 0);
    } else {
      clr = color(255, 255, 255);
    }
    
  }
  
  int getColor() {
    if ( green(clr) != 255 ) {
      return clr;
    } else {
      return color(0);
    }
  }
}