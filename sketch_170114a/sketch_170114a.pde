
// create array
PShape[] boxes = new PShape[10];
// imported svg variables
int artW = 90;
int artH = round(artW*1.4);
int spacing = 10;

void setup( ) {
  size(800,600);
  background(255);
  smooth();
  frameRate(1);

  // load all shapes
  boxes[0] = loadShape("01.svg");
  boxes[1] = loadShape("02.svg");
  boxes[2] = loadShape("03.svg");
  boxes[3] = loadShape("04.svg");
  boxes[4] = loadShape("05.svg");
  boxes[5] = loadShape("06.svg");
  boxes[6] = loadShape("07.svg");
  boxes[7] = loadShape("08.svg");
  boxes[8] = loadShape("09.svg");
  boxes[9] = loadShape("10.svg");

}

void draw() {

  for(int i=55;i<(width-artW);i+=artW+spacing){
    for(int j=33;j<(height-artH);j+=artH+spacing){
      shape(boxes[ (int)random(boxes.length) ], i, j, artW, artH );
    }
  }

}
