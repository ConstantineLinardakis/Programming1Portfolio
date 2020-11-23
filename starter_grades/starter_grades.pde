void setup () {
  size(100,100);
  background(127);
}

void draw(){
  if (mouseX >= 94) {
  textSize(7);
  text(mouseX + ": Assign letter grade A.",10,10);
  } 

  else if (mouseX >= 88) { 
   text(mouseX + "Assign letter grade A-.",10,10);
  } 
  else if (mouseX >= 86) {
   text(mouseX + "Assign letter grade B+.",10,10);
  } 
  else if (mouseX >= 82) {
   text(mouseX + "Assign letter grade B.",10,10);
  } 
  else if (mouseX >= 79) {
   text(mouseX + "Assign letter grade B-.",10,10);
  } 
  else if (mouseX >= 76) {
   text(mouseX + "Assign letter grade C+.",10,10);
  } 
  else if (mouseX >= 72) {
   text(mouseX + "Assign letter grade C.",10,10);
  } 
  else if (mouseX >= 69) {
   text(mouseX + "Assign letter grade C-.",10,10);
  } 
  else if (mouseX >= 66) {
   text(mouseX + "Assign letter grade D+.",10,10);
  } 
  else if (mouseX >= 62) {
   text(mouseX + "Assign letter grade D.",10,10);
  } 
  else if (mouseX >= 59) {
   text(mouseX + "Assign letter grade D-.",10,10);
  } 
  else if (mouseX >= 59) {
   text(mouseX + "Assign letter grade F.",10,10);
  } 

  else {
   text(mouseX + "Assign letter grade F.",10,10);
  }
}
