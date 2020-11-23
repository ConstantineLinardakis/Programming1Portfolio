PFont font;
PImage Audio;
void setup() {
  background(100,100,100);
  size(900,400);
  font = createFont("Optima-Bold-48.vlw",32);
  Audio = loadImage("239a.jpg");
}

void draw() {
  background(100,100,100);
  println(mouseX + " " + mouseY);
  drawRef();
  histEvent(160,195,100,25,"HP 200A A.O", "Made by Hawlett-Packard in 1938 and was a low-distortion audio oscillator used for testing sound equipment.", true);
  histEvent(320,195,80,25,"CNC", "Complex Number Calculator was made in 1939 and was used to calculate things remotely on a computer.", true);
  histEvent(500,195,100,25,"Z3 Computer", "Z3 was made in 1941 and was a computer built by German engineer Knrad Zuse and was used for aerodynamic calculations.", true);
  histEvent(670,195,100,25,"Colossus", "The Colossus was designed to break the codes of the Germens cipher machine and was a electronic digital computer made on 1943.", true);
  histEvent(145,260,80,25,"Model K", "Model K was made by George Stibitz and used as a demonstration adder for the basic design of a computer on 1937.", false);
  histEvent(320,260,80,25,"ABC", "Atanasoff-Berry Computer was made in 1939 and was the first automatic electronic digital computer. ", false);
  histEvent(500,260,100,25,"Bombe", "Bombe was an electro-mechanical computer that decrypted Nazi ENIGMA-based military communications and was made in 1941.", false);
  histEvent(670,260,120,25,"Curta Calculator", "Curt Herzstark designed the curta calculator for calculating numbers and was the smallest calculator ever built on 1943.", false);
}

//Draws individual historic events above or below the timeline
void histEvent() {
  
}                                 //https://www.computerhistory.org/timeline/computers/

//Draws title text and timeline
void drawRef() {
  
  // Draw the title text
  textAlign(CENTER);
  textSize(32);
  textFont(font);
  fill(255,255,255);
  text("History of Computers",width/2,50);
  
  // Draw the instructions for the app
  textSize(10);
  text("This presentation is about the history of computers, made by Constantine Linardakis | 2019",width/2,70);
  text("Hover over the text to see the descriptions of each event.",width/2,80);
  
  // Draw a decrative box
  fill(222);
  rect(50,height*0.3,800,250,10);
  
  // Draw the timeline
  line(100,height*0.6,800,height*0.6);
  stroke(#2D3F71);
  strokeWeight(2.5);
  fill(#2D3F71);
  text("1900",100,230);
  text("1950",800,230);
  
  // Draw the tic marks
  for (int i=100; i<801; i+=100) {
    line(i,height*0.6-5, i, height*0.6+5);
  }
}

void histEvent(int x, int y, int w, int h, String title, String desc, boolean top) {
  
  // Draw the button
  fill(#2D3F71);
  rect(x,y,w,h);
  
  // Draw the connecting line
  if(top==true) {
    line(x+20,y+25,x+35,y+45);
  } else {
      line(x+20,y,x+35,y-20);
  }

  // Draw the button title
  fill(255,255,255);
  textSize(14);
  textAlign(LEFT);
  text(title,x+5,y+20);
  
  // Detect if the mouse is over the button
  boolean hover = (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h);
  if(hover==true) {
    textAlign(CENTER);
    fill(0);
    textSize(10);
    if(top==true){
      //image(_____,100,y-50);
      text(desc,width/2, height*0.4);
    } else {
      //image(Audio,50,y);
      text(desc,width/2, height*0.8);
    }
    
  }
}
