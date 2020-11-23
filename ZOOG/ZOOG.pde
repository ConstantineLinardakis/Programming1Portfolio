void setup() {
  //Set the size of the window
  size(500,900);
}

void draw() {
  //Draw a white background
  //background(#F2E6B5);
  zoog(mouseX,mouseY);
  zoog(width/2,height/2);
  zoog(int(random(width)),int(random(height)));
  
  //Set CENTER mode
  
  
  //Draw Clouds
  fill(#71BEED);
  noStroke();
  ellipse(50,50,300,250);
  ellipse(300,50,300,200);
  ellipse(400,50,250,200);
  
  //Draw Ground
  fill(#794E16);
  rect(280,800,200,250);
  rect(240,800,200,250);
  rect(100,800,100,200);
  rect(50,800,100,200);
  rect(400,800,100,200);
  rect(450,800,100,200);
  
}
void zoog(int x, int y) {
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  //Draw Zoog's body
  stroke(0);
  fill(#2DA01F);
  rect(x,y,20,100);
  
  //Draw Zoog's head
  stroke(0);
  fill(#2DA01F);
  ellipse(x,y-50,60,60);
  
  //Draw Zoog's eyes
  fill(0);
  ellipse(x-17,y-50,16,32);
  ellipse(x+17,y-50,16,32);
  
  //Draw Zoog's eye pupils
  fill(255);
  ellipse(x-17,y-50,6,15);
  ellipse(x+17,y-50,6,15);
  
  //Draw Zoog's legs
  stroke(0);
  line(x-10,y+50,x-20,y+65);
  line(x+10,y+50,x+20,y+65);
}
