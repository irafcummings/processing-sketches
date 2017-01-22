// start at x / y
int x;
int y;
// array of values for random opacity in increments of 25%
int[] opac = {63, 126, 189, 255};

void setup() {
  size(1000, 1000);
  background(255);
  ellipseMode(CENTER);
  noStroke();

  // create a grid of grids
  for (x = 100; x < width-100; x += 100) {
    for (y = 100; y < height-100; y += 100) {
      dotGrid(x,y);
    }
  }

  // save an image
  save("output.jpg");
}

void dotGrid(int xOffset, int yOffset) {
  // create a loop grid that is 4 x 4
  // at each point, create an ellipse
  for (xOffset = x; xOffset < x+75; xOffset += 25 ) {
    for (yOffset = y; yOffset < y+75; yOffset += 25) {
      // each ellipse should be a random size
      int span = round(random(0,4))*8;
      int c = 0;
      // each ellipse should be a random opacity
      int a = opac[(int)random(opac.length)];
      fill(c, c, c, a);
      ellipse(xOffset,yOffset,span,span);
    }
  }
}
