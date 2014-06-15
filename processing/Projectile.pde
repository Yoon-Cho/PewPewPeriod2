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

  public Projectile(int x, int y, boolean colour, int level) {
    super();
    xcor = x;
    ycor = y;
    isWhite = colour;
    angle = 90;
  }

  void setAngle(int a) {
    angle = a;
  }

  //THIS SECTION IS FOR PLAYER PROJECTILE/UPGRADES

  //White Shot 
  //Black Shot

  //The standard laser bullet that we all know and love
  public class type1 extends Projectile {
    type1(boolean isWhite) {
      super();
      damage = 1;
      angle = 90;
      if (isWhite == true) {
        type == loadImage("type1W.jpg");
      } else {
        type == loadImage("type1B.jpg");
      }
    }
  }

  //Lightning Bolt
  //Black Missle
  public class type2 extends Projectile {
    type2(boolean isWhite) {
      super();
      damage = 2;
      angle = 90;
      if (isWhite == true) {
        type == loadImage("type2W.jpg");
      } else {
        type == loadImage("type2B.jpg");
      }
    }
  }

  //Shiny Orb
  //Black Orb
  public class type3 extends Projectile {
    type3(boolean isWhite) {
      super();
      damage = 3;
      if (isWhite == true) {
        type == loadImage("type3W.jpg");
      } else {
        type == loadImage("type3B.jpg");
      }
    }
  }

  //Exploding Star
  //Black Hole
  public class type4 extends Projectile {
    type4(boolean isWhite) {
      super();
      damage = 4;
      if (isWhite == true) {
        type == loadImage("type4W.jpg");
      } else {
        type == loadImage("type4B.jpg");
      }
    }
  }

  //Swedish Fish
  //Spongebob's Face
  public class type5 extends Projectile {
    type5(boolean isWhite) {
      super();
      damage = 5;
      if (isWhite == true) {
        type == loadImage("type5W.jpg");
      } else {
        type == loadImage("type5B.jpg");
      }
    }
  }

  //SECTION FOR ENEMY PROJECTILES. BRAINSTORM ENEMIES LATER
}

