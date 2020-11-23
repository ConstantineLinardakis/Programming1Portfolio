class Button {
  // Member Variables
  int x, y, w, h;
  String val;
  boolean over;
  color c1, c2;

  // Constructor
  Button(int x, int y, int w, int h, String val, color c1, color c2) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    this.c1 = c1;
    this.c2 = c2;
  }

  // Display the Button
  void display() {
    stroke(0);
    if (over) {
      fill(c2);
    } else {
      fill(c1);
    }
    //rectMode(CENTER);
    rect( x, y, w, h);
    textAlign(CENTER);
    fill(255);
    textSize(18);
    if (val.equals("+/-")) {
      text(val, x+32, y+40);
    } else {
      if (val.equals("C")) {
        text(val, x+32, y+40);
      } else {
        if (val.equals("sin")) {
          text(val, x+32, y+40);
        } else {
          if (val.equals("x²")) {
            text(val, x+33, y+40);
          } else {
            text(val, x+33, y+40);
          }
        }
      }
    }
  }

  // Interact with Button
  void hover(int tempX, int tempY) {
    over = tempX>x && tempX<x+w && tempY>y&& tempY<y+h;
  }
}
