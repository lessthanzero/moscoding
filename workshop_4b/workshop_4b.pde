String lines = "Line 1\nLine 2\nLine 3";
PFont f;

void setup() {
  size(640, 480, P3D);
  f = createFont("Roboto", 12);
}

void draw() { 
  
  textFont(f);
  
  background(0);
  stroke(153);
  
  textSize(11);
  
  textAlign(CENTER, BOTTOM);
  //line(0, 30, 150, 30);
  text("CENTER,BOTTOM", 50, 30, -20);
  
  textAlign(CENTER, CENTER);
  //line(0, 50, 150, 50);
  text("CENTER,CENTER", 50, 50);
  
  textAlign(CENTER, TOP);
  //line(0, 70, 150, 70);
  text("CENTER,TOP", 50, 70);
  
  //char[] str = {'a', 'b', 'c'};
  
  //text( str, 0, 2, 50, 90, 0);
  text(lines, 100, 200, 150, 300);
  
  
  for (int i = 0; i < 3; i++) {
    
    textLeading( (i + 1) * 10 );
    text(lines, (i + 2) * 100, 25);
    
  }
  
}