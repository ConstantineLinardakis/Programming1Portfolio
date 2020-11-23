int x, y;

void setup() {
  size(600,400);
  frameRate(10);
  x = 0;
  y = 0;
}

void draw() {
  fill(255);
  drawName();
  noLoop();
}

// Algorithm for your first name
void drawName() {
  moveRight(5);
  moveDown(10);
  moveRight(10);
  moveLeft(10);
  moveDown(18);
  moveRight(15);
  moveUp(5);
  moveRight(5);
  moveDown(5);
  moveLeft(5);
  moveRight(10);
  moveUp(5);
  moveRight(5);
  moveLeft(5);
  moveDown(5);
  moveRight(5);
  moveDown(5);
  moveLeft(5);
  moveRight(5);
  moveUp(5);
  moveRight(5);
  moveUp(5);
  moveLeft(3);
  moveRight(6);
  moveLeft(3);
  moveUp(5);
  moveDown(10);
  moveRight(7);
  moveUpRight(2);
  moveRight(4);
  moveLeft(4);
  moveUpRight(2);
  moveDownRight(4);
  moveRight(5);
  
}

// Method to draw right line
void moveRight(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y);
  }
  x=x+(10*rep);
}


// Method to draw left line
void moveLeft(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i,y);
  }
  x=x-(10*rep);
}


// Method to draw Up line
void moveUp(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x,y-i);
  }
  y=y-(10*rep);
}


// Method to draw Down line
void moveDown(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x,y+i);
  }
  y=y+(10*rep);
}

// Method to draw DownRight line
void moveDownRight(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y+i);
  }
  x=x+(10*rep);
  y=y+(10*rep);
}

void moveUpRight(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y-i);
  }
  x=x+(10*rep);
  y=y-(10*rep);
}
