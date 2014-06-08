// Setup Method

PImage plane;
Player me;

void setup() {
  size(1000, 750);
  plane = loadImage("Plane.jpg");
  me = new Player();
}

// Draw Method
void draw() {
  background(0);
  image(plane, me.getX(), me.getY());
  me.moveCoordinate();
}

