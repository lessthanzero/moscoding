int cellSize = 20;

void setup() {
  size(1280, 720);
}

void draw() {
  background(0);
  fill(255);
  for (int i = 0; i < width/cellSize; i++) {
    for (int j = 0; j < height/cellSize; j++) {
      rectMode(CENTER);
      translate(-1*cellSize, -1*cellSize);
      rotate(PI);
      rect(1.5*i*cellSize, 1.5*j*cellSize, 2, 10);
      translate(1*cellSize, 1*cellSize);
    }
  }
}