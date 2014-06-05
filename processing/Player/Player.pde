PImage plane;
Ikaruga me;

void setup() {
  size(1000, 750);
  plane = loadImage("Plane.jpg");
  me = new Ikaruga();
}

void draw() {
  background(255);
  image(plane, me.getX(), me.getY());
  me.moveCoordinate();
}

class Ikaruga {
  int xcor, ycor;
  int xmove, ymove;
  int[] coor;
  boolean space;
  int bomb;
  boolean isWhite;

  // Constructor
  Ikaruga() {
    super(); 
    xcor = 500;
    ycor = 600;
    bomb = 3;
  }

  void setX(int x) {
    xcor = x;
  }

  int getX() {
    return xcor;
  }

  void setY(int y) {
    ycor = y;
  }

  int getY() {
    return ycor;
  }

  void moveCoordinate() {
    xcor += xmove;
    ycor += ymove;
  }


  boolean getSpace() {
    return space;
  }

  void keyPressed(KeyEvent event) {

    if (key == UP) {
      ymove += 10;
    }

    if (key == DOWN) {
      ymove -= 10;
    }

    if (key == LEFT) {
      xmove -= 10;
    }

    if (key == RIGHT) {
      xmove += 10;
    }
  }

  void keyReleased(KeyEvent event) {

    if (key == UP) {
      ymove -= 10;
    }

    if (key == DOWN) {
      ymove += 10;
    }

    if (key == LEFT) {
      xmove += 10;
    }

    if (key == RIGHT) {
      xmove -= 10;
    }

    if (key == ' ') {
      space = false;
    }
  }

  void keyTyped(KeyEvent event) {
    //List of Keys
    //B = bomb
    //P = pause - not in the player class
    //S = switch color (are we doing ikaruga?)
  }
}

