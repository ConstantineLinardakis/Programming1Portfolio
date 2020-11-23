size(650,550);
background(#626262);

line(100,0,100,height);
line(200,0,200,height);
line(300,0,300,height);
line(400,0,400,height);
line(500,0,500,height);
line(600,0,600,height);
line(0,100,width,100);
line(0,200,width,200);
line(0,300,width,300);
line(0,400,width,400);
line(0,500,width,500);

fill(255,255,0);

rect(20,20,120,120);
rect(180,20,120,120,10);
rect(340,20,120,120,15,10,25,35);
rect(500,40,120,80);

fill(255,0,0);

ellipse(80,250,120,120);
ellipse(250,250,120,80);
ellipse(400,250,80,120);

fill(0,0,255);

triangle(30,340,140,460,20,420);
triangle(560,185,620,300,500,300);

fill(0,255,255);

quad(180,340,300,340,300,380,180,460);
quad(360,400,400,340,440,400,400,460);
quad(500,340,620,400,500,460,560,400);

fill(255,255,255);
loadFont("Chalkboard-Bold-48.vlw");
text("ShapesAssignment",270,15);
textSize(32);
