// grid class
class Grid {

  // float xpos;
  // float ypos;

  Grid() {
    // no constructor needed ???
  }

  void arrange() {
    for (float x = 0-art_w/2; x < width; x += space) {
      for (float y = 0-art_h/2; y < height; y += space) {

        noStroke();
        // weighted probability
        float fill_prob = random(100);

        // give the SVG a color w/ weighted probability
        if (fill_prob < 30) {
          fill(colors[0]);
        } else if (fill_prob < 40) {
          fill(colors[1]);
        } else if (fill_prob < 60) {
          fill(colors[2]);
        } else if (fill_prob < 90) {
          fill(colors[3]);
        } else {
          fill(colors[4]);
        }

        // assign an SVG to a PShape to be able to disable style
        PShape a;
        a = art[ (int)random(art.length) ];
        a.disableStyle();

        // draw shape
        shape(a, x, y, art_w, art_h );
      }
    }
  }

}
