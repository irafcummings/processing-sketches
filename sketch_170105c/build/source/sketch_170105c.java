import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.svg.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_170105c extends PApplet {

// svg library

boolean saveSVG = false;

// filename variables
String s;

// color variables array
static final int[] colors = { 0xffFFffff, 0xff000000 };

public void setup(){
  
  background(0);
  noLoop();
}

public void draw() {
  int min = minute();
  int sec = second();
  s = "grid" + min + sec + ".svg";
  // svg export filename

  beginRecord(SVG, s);

  for(int i=0;i<5;i++){
    for(int j=0;j<7;j++){
      noStroke();
      fill(colors[PApplet.parseInt(random(colors.length))]);
      rect(20*i,20*j,20,20);
    }
  }

  endRecord();
  saveSVG = false;
}

public void keyPressed() {
  // save if saveSVG is true
  // if ( key == 's' ) {
  //   saveSVG = true;
  // }
  //reload sketch
  if ( key == 'r' ) {
    redraw();
  }
}
  public void settings() {  size(100,140); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_170105c" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
