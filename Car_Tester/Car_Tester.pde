Car c1;
Car[] cars = new Car[10];

void setup() {
  size(200,200);
  c1 = new Car(color(random(255)),random(width),random(height),random(10));
  for(int i=0; i<cars.length; i++) {
     cars[i] = new Car(color(random(255)),random(width),random(height),random(10));
 }
}

void draw() {
  background(0);
  c1.display();
  c1.drive();
  for(int i=0; i<cars.length; i++) {
     cars[i].drive();
     cars[i].display();
 }
}
