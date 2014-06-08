public class Projectile extends Unit {

  //Things to add:
  //All the different images
  //types of bullets
  //hitboxes?

  PImage type;

  public Projectile(int x, int y) {
    super();
    xcor = x;
    ycor = y;
    isWhite = true;
  }

  void type1() {
    type = loadImage("type1.jpg");
  }
}

