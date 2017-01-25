float X;
float Xspead;
float Y;
float Yspead;
float ChahgeSpead;

void setup() {
 size(640, 360);

 X = 0;
 Y = 0;
 Xspead = 10;
 Yspead = 10;
 ChahgeSpead = 1;
}

void draw() {
 
  // Drawing
  background(50);
  fill(255);
  ellipse(X,Y,24,24);
  
  // Logical
  X= X + Xspead;
  Y= Y + Yspead;
  
  if (X > width || X <0) {
    Xspead = Xspead * -ChahgeSpead;
  }
  if (Y > height || Y <0) {
    Yspead = Yspead * -ChahgeSpead;
  }
  
  
}