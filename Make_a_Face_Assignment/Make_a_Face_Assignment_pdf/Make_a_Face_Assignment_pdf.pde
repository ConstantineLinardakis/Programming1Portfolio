// setup runs once
void setup(){
  size(500,500);
  background(200);
  frameRate(1);
}

//draw runs on a loop
void draw(){
  background(200);
  strokeWeight(2);
  // renders the head
  fill(random(180,280),random(190,220),103);
  ellipse(width/2,height/2,random(width*0.5,width*0.8),random(height*0.7,height*0.9));
  
  // render the eyes
  fill(255);
  ellipse(width*0.6,height*0.3,random(80,120),random (80,120)); // right eye
  ellipse(width*0.4,height*0.3,random(80,120),random (80,120)); // left eye
  fill(27);
  ellipse(width*0.4,height*0.3,random(10,40),random (10,40)); // left pupil
  ellipse(width*0.6,height*0.3,random(10,40),random (10,40)); // left pupil
  
  //render the nose
  line(width*random(0.4,0.5),height*0.4,width*0.4,height*0.5);
  line(width*0.4,height*0.5,width*0.6,height*0.45);
  
  //render the mouth
  line(width*random(0.4,0.5),height*0.7,width*0.6,height*0.7);
  
  //render the tooth
  fill(255,255,255);
  rect(random(250,260),350,10,30,3);
  
  //render the hat
  fill(124,87,7);
  rect(random(120,130),20,260,65,8,9,12,18);
  rect(random(160,170),0.5,150,70,8,9,12,18);
  //render the text
  fill(255,255,255);
  textSize(15);
  text("WILD WEST",200,40);
}
