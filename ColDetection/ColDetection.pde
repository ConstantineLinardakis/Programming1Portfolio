//Global variables
int xspeed, yspeed;
int xpos, ypos, wdth, ht;
void setup(){
  //1. This is where you double your size of your display
  size(displayWidth,displayHeight);
  background(0);
  xspeed = 3; //This is where you can make it only x axis and only going up and down
  yspeed = 10;
  //This is where you double the ball size
  wdth = 20;
  ht = 20;
  noStroke();
  xpos = width/2;
  ypos = height/2;
  //This is where you make the speed half, slow, fast
  frameRate(30);
}
void draw(){
  //This is where you invert the colors
  //background(1,1,1);  This is where you show ball path
  fill(255,255,255);
  ellipse(xpos, ypos, wdth, ht);
  //This is where you make another ball
  ellipse(xpos+30, ypos+30, wdth, ht);
  xpos += xspeed;
  ypos += yspeed;
  if (xpos >= width - wdth/2 || xpos <= wdth/2){
    xspeed *= -1;
  }
    if (ypos >= height-ht/2 || ypos <= ht/2){
      yspeed = yspeed * -1;
    }
}
