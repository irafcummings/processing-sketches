// array of colors
color[] colors = { #E11E00, #CA1A00, #B41800, #700E00, #FFFFFF };

// array of SVGs
PShape[] art = new PShape[8];

// SVG variables
float art_w = 50;
float art_h = 50;
float space = 100;

// grid class
Grid grid1;
Grid grid2;

void setup() {
  size(1900,1000);
  background(255);

  // load SVG
  art[0] = loadShape("00.svg");
  art[1] = loadShape("01.svg");
  art[2] = loadShape("02.svg");
  art[3] = loadShape("03.svg");
  art[4] = loadShape("04.svg");
  art[5] = loadShape("05.svg");
  art[6] = loadShape("06.svg");
  art[7] = loadShape("07.svg");

  // red bar
  noStroke();
  fill(#E11E00);
  rect(0, 0, width, height/2);

  // grid objects
  grid1 = new Grid();
  grid1.arrange();
  grid2 = new Grid();
  grid2.arrange();

  // export image
  save("output.jpg");
}
