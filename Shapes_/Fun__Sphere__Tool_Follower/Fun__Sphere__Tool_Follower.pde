// setup runs once
void setup() {
  size(200,200);
  background(127);
}

// draw runs on a loop
void draw() {
  fill(random(255));
  ellipse(mouseX,mouseY,random(20),random(20));
}
