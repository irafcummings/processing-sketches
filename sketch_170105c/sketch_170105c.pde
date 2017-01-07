// svg library
import processing.svg.*;
boolean saveSVG = false;

// filename variables
String s;

// color variables array
static final color[] colors = { #FFffff, #000000 };

void setup(){
  size(100,140);
  background(0);
  noLoop();
}

void draw() {
  int min = minute();
  int sec = second();
  s = "grid" + min + sec + ".svg";
  // svg export filename

  beginRecord(SVG, s);

  for(int i=0;i<5;i++){
    for(int j=0;j<7;j++){
      noStroke();
      fill(colors[int(random(colors.length))]);
      rect(20*i,20*j,20,20);
    }
  }

  endRecord();
  saveSVG = false;
}

void keyPressed() {
  // save if saveSVG is true
  // if ( key == 's' ) {
  //   saveSVG = true;
  // }
  //reload sketch
  if ( key == 'r' ) {
    redraw();
  }
}
