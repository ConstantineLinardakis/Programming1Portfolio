// Global Variables
Button [] buttons = new Button[10];
Button [] opButtons = new Button[14];
String dVal;
String op;
boolean left;
float r;
float l;
float result;

void setup() {
  size(300, 380);
  dVal = "0";
  op = "";
  left = true;
  r = 0.0;
  l = 0.0;
  result = 0.0;
  buttons[0] = new Button(60, 320, 120, 60, "0", #85868B, #404250);
  buttons[1] = new Button(60, 260, 60, 60, "1", #85868B, #404250);
  buttons[2] = new Button(120, 260, 60, 60, "2", #85868B, #404250);
  buttons[3] = new Button(180, 260, 60, 60, "3", #85868B, #404250);
  buttons[4] = new Button(60, 200, 60, 60, "4", #85868B, #404250);
  buttons[5] = new Button(120, 200, 60, 60, "5", #85868B, #404250);
  buttons[6] = new Button(180, 200, 60, 60, "6", #85868B, #404250);
  buttons[7] = new Button(60, 140, 60, 60, "7", #85868B, #404250);
  buttons[8] = new Button(120, 140, 60, 60, "8", #85868B, #404250);
  buttons[9] = new Button(180, 140, 60, 60, "9", #85868B, #404250);
  opButtons[0] = new Button(180, 320, 60, 60, ".", #85868B, #404250);
  opButtons[1] = new Button(0, 320, 60, 60, "C", #6F1926, #404250);
  opButtons[2] = new Button(240, 320, 60, 60, "=", #6C9EE3, #204576);
  opButtons[3] = new Button(240, 260, 60, 60, "+", #6C9EE3, #204576);
  opButtons[4] = new Button(240, 200, 60, 60, "-", #6C9EE3, #204576);
  opButtons[5] = new Button(240, 140, 60, 60, "X", #6C9EE3, #204576);
  opButtons[6] = new Button(240, 80, 60, 60, "÷", #6C9EE3, #204576);
  opButtons[7] = new Button(180, 80, 60, 60, "%", #6C9EE3, #204576);
  opButtons[8] = new Button(120, 80, 60, 60, "±", #6C9EE3, #204576);
  opButtons[9] = new Button(60, 80, 60, 60, "π", #6C9EE3, #204576);
  opButtons[10] = new Button(0, 80, 60, 60, "rand", #6C9EE3, #204576);
  opButtons[11] = new Button(0, 140, 60, 60, "x²", #6C9EE3, #204576);
  opButtons[12] = new Button(0, 200, 60, 60, "✓", #6C9EE3, #204576);
  opButtons[13] = new Button(0, 260, 60, 60, "sin", #6C9EE3, #204576);
}


void draw() {
  background(#85868B);

  updateDisplay();

  for (int i=0; i<buttons.length; i++) {
    buttons [i].display();
    buttons [i].hover(mouseX, mouseY);
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].hover(mouseX, mouseY);
    opButtons[i].display();
  }
}


void updateDisplay() {
  rectMode(CORNER);
  fill(#85868B);
  rect(80, 300, width-20, 50);

  fill(255);
  textAlign(RIGHT);
  if (dVal.length()<13) {
    textSize(32);
  } else if (dVal.length()<14) {
    textSize(28);
  } else if (dVal.length()<15) {
    textSize(26);
  } else if (dVal.length()<17) {
    textSize(24);
  } else if (dVal.length()<19) {
    textSize(22);
  } else if (dVal.length()<21) {
    textSize(20);
  } else if (dVal.length()<23) {
    textSize(18);
  } else if (dVal.length()<25) {
    textSize(16);
  } else {
    textSize(14);
  }
  text(dVal, width-15, 50);

  //Calc Reference
  fill(127);
  rectMode(CORNER);
  rect(10, 250, width-20, 52);

  textSize(9);
  textAlign(LEFT);
  fill(255);
  text("L:" + l + "R:" + r + "Op:" + op, 15, 263);
  text("Result:" + result + "Left:" + left, 15, 275);
}


void mouseReleased() {
  println("L:" + l + "R:" + r + "Op:" + op);
  println("Result:" + result + "Left:" + left);

  //Interaction with numbers
  for (int i=0; i<buttons.length; i++) {
    if (buttons[i].over && dVal.length()<20) {
      handleEvent(buttons[i].val, true);
    }
  }
  for (int i=0; i<opButtons.length; i++) {
    if (opButtons[i].over) {
      handleEvent(opButtons[i].val, false);
    }
  }
}

void keyPressed() {
  println("KEY:" + key + "keyCode:" + keyCode);
  if (key == '0') {
    handleEvent("0", true);
  } else if (key == '1') {
    handleEvent("1", true);
  } else if (key == '2') {
    handleEvent("2", true);
  } else if (key == '3') {
    handleEvent("3", true);
  } else if (key == '4') {
    handleEvent("4", true);
  } else if (key == '5') {
    handleEvent("5", true);
  } else if (key == '6') {
    handleEvent("6", true);
  } else if (key == '7') {
    handleEvent("7", true);
  } else if (key == '8') {
    handleEvent("8", true);
  } else if (key == '9') {
    handleEvent("9", true);
  } else if (key == '+') {
    handleEvent("+", false);
  } else if (key == '-') {
    handleEvent("-", false);
  } else if (key == '*') {
    handleEvent("X", false);
  } else if (key == '/') {
    handleEvent("÷", false);
  } else if (key == '.') {
    handleEvent(".", false);
  } else if (key == 'C') {
    handleEvent("C", false);
  } else if ( key == 10) { //(key == CODED) {
    if (keyCode == ENTER || keyCode == RETURN) {
      handleEvent("=", false);
    }
  } else if (keyCode == 27) {
    key = 0;
    if (key == 0) {
      handleEvent( "C", false);
    }
  }
} 

String handleEvent(String val, boolean num) {
  if (left & num) { //Left Number
    if (dVal.equals("0") || result == 1) { 
      dVal = (val);
      l = float(dVal);
    } else {
      dVal += (val);
      l = float(dVal);
    }
  } else if (!left && num) {
    if (dVal.equals("0") || result == l) {
      dVal = (val);
      r = float(dVal);
    } else {
      dVal += (val);
      r = float(dVal);
    }
  } else if (val.equals("C")) {
    dVal = "0";
    result = 0.0;
    left = true;
    r = 0.0;
    l = 0.0;
    op = "";
  } else if (val.equals("+")) {
    // Determine if the calculator is operating on the left or right
    if (!left) {
      performCalc();
    } else {
      op = "+";
      left = false;
      dVal = "0";
    }
  } else if (val.equals("-")) {
    if (!left) {
      performCalc();
    } else {
      op = "-";
      left = false;
      dVal = "0";
    }
  } else if (val.equals("X")) {
    if (!left) {
      performCalc();
    } else {
      op = "X";
      left = false;
      dVal = "0";
    }
  } else if (val.equals("÷")) {
    if (!left) {
      performCalc();
    } else {
      op = "÷";
      left = false;
      dVal = "0";
    }
  } else if (val.equals("±")) {
    if (!left) {
      l *= -1;
      dVal = str(l);
    } else {
      r *= -1;
      dVal = str(r);
    }
  } else if (val.equals("x²")) {
    if (!left) {
      performCalc();
    } else {
      op = "x²";
      left = false;
      dVal = "0";
    }
  } else if (val.equals("✓")) {
    if (!left) {
      l = sqrt(l);
      dVal = str(l);
    } else {
      r = sqrt(r);
      dVal = str(r);
    }
  } else if (val.equals("sin")) {
    if (!left) {
      l = sin(l);
      dVal = str(l);
    } else {
      r = sin(r);
      dVal = str(r);
    }
  } else if (val.equals("rand")) {
    if (!left) {
      l = random(0, 1);
      dVal = str(l);
    } else {
      r = random(0, 1);
      dVal = str(r);
    }
  } else if (val.equals("π")) {
    if (!left) {
      l = PI;
      dVal = str(l);
    } else {
      r = PI;
      dVal = str(r);
    }
  } else if (val.equals(".") && !dVal.contains(".")) {
    dVal += (val);
  } else if (val.equals("=")) {
    performCalc();
  }
  return val;
}


void performCalc() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("X")) {
    result = l * r;
  } else if (op.equals("÷")) {
    result = l / r;
  } else if (op.equals("x²")) {
    result = pow(l, r);
  }
  l = result;
  dVal = str(result);
  left = true;
}
