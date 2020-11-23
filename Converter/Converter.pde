void setup() {
size(1000,250);
}



void draw() {
  fill(#E0D0AC);
  background(#464646);
  fill(#3B3858);
  rect(0,0,999,100);
  rect(0,150,999,99);
  fill(#E0D0AC);
  drawRef();
  textAlign(LEFT);
  fill(#E0D0AC);
  textSize(15);
  text("Currency Converter | 2019",415,30);
  textSize(10);
  text("Made By :  Constantine Linardakis",425,45);
  textSize(13);
  text("Instructions : Hover over the line, to see the converter in action.",325,230);
  textSize(13);
  text("USD:" + mouseX + "EURO:" + euroConverter(mouseX),10,30);
  text("EURO:" + mouseX + "USD:" + usdConverter(mouseX),10,50);
}

// rename far/cel to USD and EUR
//change the math to the 1/1.1

float euroConverter(float euro) {
  //Formula to convert to cel
  return euro = (euro-32) * (1.1/1.0);
}

float usdConverter(float usd) {
  //Formula to convert to far
  return usd = usd * 1/1.1 + 32;
}

void drawRef() {
  line(0,125,width,125);
  //draw tic marks
  for(int i = 0;i<width; i+=50){
    stroke(#E0D0AC);
    line(i,120,i,130);
    textAlign(CENTER);
    textSize(10);
    text(i,i,120);
  }
  fill(255,0,0);
  rect(0,125,mouseX,5,0);
}
