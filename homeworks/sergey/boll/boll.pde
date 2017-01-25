int boll = 60;        
float xpos, ypos;        
float xspeed = 7;  
float yspeed = 7;  
int xdirection = 1;
int ydirection = 1;

void setup() 
{
  size(1200, 300);
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
  
  xpos = width/2;
  ypos = height/2;
}

void draw() 
{
  background(0, 0, 0, 0);
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  if (xpos > width-boll || xpos < boll) {
    xdirection *= -1;
  }
  if (ypos > height-boll || ypos < boll) {
    ydirection *= -1;
  }
  
  ellipse(xpos, ypos, boll, boll);
  fill(color ( random(0,255),random(0,255),random(0,255))) ;
  //noStroke();
  //strokeWeight(6);
}