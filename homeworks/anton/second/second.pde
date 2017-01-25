Mover mover;       // Object of Mover

void setup() {
 size(640, 360);
 mover = new Mover();
} 

void draw() {
  background(255);
  
  mover.update();    // Update the Location
  mover.kraya();     // Mouse !!! ведет за мышкой  mover.edges()
  mover.display();   // Show at the Display
}
  