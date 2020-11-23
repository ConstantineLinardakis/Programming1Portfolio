class Button{
  // Member Variables
  int x,y,w,h;
  boolean over;
  String title;
  
  // Constructor
  Button(int tempX, int tempY, int tempW, int tempH, String tempTitle){
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    title = tempTitle;
    over = false;
  }
  
  // Display the Button
  void display(){
    if(over) {
      fill(127);
    } else {
      fill(0);
    }
    rect(x,y,w,h);
    fill(255);
    text(title,x+10,y+20);
  }
  
  // Interact with Button
  void hover(int tempX, int tempY) {
    over = tempX>x && tempX<x+w && tempY>y&& tempY<y+h;
  }
}
