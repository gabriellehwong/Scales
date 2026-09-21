void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  //your code here
  background(30, 150, 200);
  int row = 0;
  for (int y = 485; y > -40; y -= 35) {
    for (int x = 0; x < 500; x += 40) {
      if (row % 2 == 0) {
        scale(x, y);
      } else {
        scale(x + 20, y);
      }
    }
    row++;
  }
}
void scale(int x, int y) {
  //your code here
  fill((int)(Math.random() * 205) + 50, (int)(Math.random() * 205) + 50, (int)(Math.random() * 205) + 50);
  stroke(20, 100, 150);
  beginShape();
  vertex(x - 25, y);
  bezierVertex(x - 25, y - 25, x + 25, y - 25, x + 25, y);
  bezierVertex(x + 25, y + 15, x + 10, y + 30, x, y + 35);
  bezierVertex(x - 10, y + 30, x - 25, y + 15, x - 25, y);
  endShape(CLOSE);
}

