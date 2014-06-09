public class Projectile extends Unit {

  //Things to add:
  //All the different images
  //types of bullets
  //hitboxes?

  PImage type;
  int angle;
  /*
        90
   
   180        0
   */

  public Projectile(int x, int y, boolean color, int level) {
    super();
    xcor = x;
    ycor = y;
    isWhite = color;
    angle = 90;
    if (level == 1)
      type1();
    if (level == 2)
      type2();
    if (level == 3)
      type3();
  }

  void setAngle(int a) {
    angle = a;
  }

  //THIS SECTION IS FOR PLAYER PROJECTILE/UPGRADES

  //The standard laser bullet that we all know and love
  void type1() {
    type = loadImage("type1.jpg");
    angle = 90;
  }

  //Two bullets are better than one
  void type2() {
    type = loadImage("type2.jpg");
    angle = 90;
  }

  //
  void type3() {
    type = loadImage("type3.jpg");
  }

  //
  void type4() {
    type = loadImage("type4.jpg");
  }

  //
  void type5() {
    type = loadImage("type5.jpg");
  }

  //SECTION FOR ENEMY PROJECTILES. BRAINSTORM ENEMIES LATER
}

