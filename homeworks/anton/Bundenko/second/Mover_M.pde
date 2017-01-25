class Mover {

  // отслеживает местоположение, скорость и ускорение расположение PVector
  PVector location;      
  PVector velocity;
  PVector acceleration;
  // maximum velosity
  float topspead; 


 Mover() {                                            // Начальное положение
   
   location = new PVector(width/2, height/2);         // положение начать с центра
   velocity = new PVector(0,0);                       // скорость
   acceleration = new PVector(0,0);                   // ускорение
   topspead = 6;                                     // мах скорость
  }

 void update() {                                      // Функция обновления движения
 
   PVector mouse = new PVector(mouseX, mouseY);       // теперь вектор, указывающий от места мыши
   
   mouse.sub(location);
   mouse.setMag(0.5);
   acceleration = mouse;
   
   velocity.add(acceleration);               // Скорость изменяется в зависимости от ускорения 
   location.add(velocity);                  // Меняется расположение по скорости
   velocity.limit(topspead);               // Ограничение скорости по TopSpeed 
 }
 
 void kraya() {
   if (location.x>width) location.x = 0;
 }


 void display() {
   stroke(255);
   strokeWeight(2);
   fill(127);
   ellipse(location.x,location.y,48,48);
  }
}