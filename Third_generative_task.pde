void setup() {
  size(800, 800);
  background(255); 
  noLoop();
}

void draw() {
  background(255); 

  // Number of points in the grid
  int cols = 20;
  int rows = 20;
  float margin = 100;
  float spacingX = (width - 2 * margin) / (cols - 1);
  float spacingY = (height - 2 * margin) / (rows - 1);


  strokeWeight(3);

  for (int y = 0; y < rows; y++) {
    for (int x = 0; x < cols; x++) {
      float posX = margin + x * spacingX;
      float posY = margin + y * spacingY;

      float circleSize = random(10, 40); 

      fill(random(100, 255), random(100, 255), random(100, 255));
      noStroke();
      ellipse(posX, posY, circleSize, circleSize);

      stroke(0);
      if (x < cols - 1) {
        line(posX, posY, posX + spacingX, posY);
      }
      if (y < rows - 1) {
        line(posX, posY, posX, posY + spacingY);
      }
    }
  }
}
