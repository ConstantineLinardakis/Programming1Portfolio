Button b1;
Button b2;
Button[] buttons = new Button [10];

void setup() {
  size(200,200);
  b1 = new Button(50,50,100,30,"B1");
  b2 = new Button(50,80,100,30,"B2");
  for(int i = 0; i < buttons.length; i++) {
     buttons[i] = new Button (int (random(width)),int(random(height)),100,30,"B2");
  }
}

void draw() {
  background(255);
  b1.display();
  b1.hover(mouseX,mouseY);
  b2.display();
  b2.hover(mouseX,mouseY);
  for( int i = 0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX,mouseY);
  }
}
