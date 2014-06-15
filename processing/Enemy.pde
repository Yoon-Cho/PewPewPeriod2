public class Enemy extends Unit
{
  int angle;

  /*
  180          360
   
   
   
         270
   */


  // Constructor
  public Enemy() { 
    super();
    angle = 270;
    if (Math.random() > 50)
      isWhite = true;
    else
      isWhite = false;
  }

  public Enemy(int x, int y) {
    this();
    setX(x);
    setY(y);
  }

  public Enemy(boolean isWhite) { 
    super();
    angle = 270;
    this.isWhite = isWhite;
  }

  public Enemy(boolean isWhite, int x, int y) {
    this(isWhite);
    setX(x);
    setY(y);
  }


  public class Dud extends Enemy {
    Dud(boolean isWhite, int x, int y) {
      super(isWhite, x, y);
      health = 1;
      wide = 75;
      tall = 75;
    }
  }

  public class Charger extends Enemy {
    Charger(int x,int y) {
      super(x,y);
      health = 1;
      wide = 50;
      tall = 50;
    }
    public void movement() {
      //Best Search
    }
  }

  public class Boomerang extends Enemy {
    Boomerang(int x,int y, int scale) {
      super(x,y);
      health = 5*scale;
      wide = 75;
      tall = 75;
    }
  }

  public class Shooter extends Enemy {
    Shooter(int x,int y, int scale) {
      super(x,y);
      health = 10*scale;
      wide = 50;
      tall = 75;
    }
    public void movement() {
      //Straight Path
    }
    public void shoot() {
      add(new type3(isWhite), xcor, ycor);
    }
  }
  public class Spinner extends Enemy {
    Spinner(int x,int y, int scale) {
      super(x,y);
      health = 30*scale;
      wide = 100;
      tall = 100;
    }
    public void movement() {
      //random movement
    }
  }
  public class Waver extends Enemy {
    Waver(int x,int y, int scale) {
      super(x,y);
      health = 100*scale;
      wide = 100;
      tall = 50;
    }
    public void movement() {
      //none
    }
    public void shoot() {
      add(new type2(isWhite), xcor-20, ycor);
      add(new type2(isWhite), xcor-15, ycor);
      add(new type2(isWhite), xcor-10, ycor);
      add(new type2(isWhite), xcor-5, ycor);
      add(new type2(isWhite), xcor, ycor);
      add(new type2(isWhite), xcor+5, ycor);
      add(new type2(isWhite), xcor+10, ycor);
      add(new type2(isWhite), xcor+15, ycor);
      add(new type2(isWhite), xcor+20, ycor);
    }
  }
  public class Desecrator extends Enemy {
    Desecrator(int x,int y, int scale) {
      super();
      health = 10*scale;
      wide = 200;
      tall = 50;
    }
    public void movement() {
      //Best Search
    }
    public void shoot() {
      //hmm?
    }
  }
  public class Zamansky extends Enemy {
    Zamansky(int scale) {
      super();
      xcor = 400;
      ycor = 300;
      health = 9001*scale;
      wide = 200;
      tall = 200;
    }
    public void movement() {
      //none?
      //spawns other stuff
    }

    public void attack1() {
    }//2,3,4,5,etc.
  }

  /*
Ideas for enemies:
   Dud - Dud
   Charger - use best search?
   Boomerang - go forward and back
   Regular shooter that spawn randomly
   Spinners - They move around in random paths
   Wavers - shoot waves of projectiles
   Large ships - shoot aimed projectiles directly
   Desecrators - leave projectiles after death
   Mr.Z - multiple attacks - circle waves of shots
   - random death road generator
   - super beam
   - create more enemies
   */

  void shoot(int numB) {
    Projectile[] shots = new Projectile[numB];
  }

  double findAngle(Player me) {
    int x1 = this.getX();
    int y1 = this.getY();
    int x2 = me.getX();
    int y2 = me.getY();
    int deltaX = me.getX() - this.getX();
    int deltaY = me.getY() - this.getY();
    double answer = (double)Math.toDegrees(Math.atan2(deltaX, deltaY));
    if (answer < 0)
      angle += 360;
    return answer;
  }
}

