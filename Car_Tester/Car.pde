class Car {
  // Member Variables
  color c;
  float xpos;
  float ypos;
  float xspeed;

  // Constructor
  Car(color c, float xpos, float ypos, float xspeed) {
    this.c = c;
    this.xpos = xpos;
    this.ypos = ypos;
    this.xspeed = xspeed;
  }

  // Display Method
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 20, 10);
    rect(xpos-3, ypos-7, 7, 3);
    rect(xpos-3, ypos+8, 7, 3);
    rect(xpos+7, ypos+8, 7, 3);
    rect(xpos+7, ypos-7, 7, 3);
  }
  // Drive Method
  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
