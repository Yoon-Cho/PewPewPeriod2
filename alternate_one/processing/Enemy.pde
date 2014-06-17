public class Enemy extends Unit
{
  // Constructors
  public Enemy()
  {
    super( 1, 1, (int) random(0, width + 1), (int) random(0, height / 4), 0, 0, 100, 100, "enemy.jpg" );
  }

  public Enemy(int health, int damage, int xcor, int ycor, int xmove, int ymove, int w, int h, String image)
  {
    super(health, damage, xcor, ycor, xmove, ymove, w, h, image);
  }

  public class Dud extends Enemy {
    Dud(int xcor, int ycor) {
      super(1, 1, xcor, ycor, 0, 0, 25, 25, "Dud.jpg");
    }
  }

  public class Charger extends Enemy {
    Charger(int xcor, int ycor) {
      super(1, 1, xcor, ycor, /*use the angle to player formula*/, 50, 50, "Charger.jpg");
    }
  }

  public class Boomerang extends Enemy {
    Boomerang(int xcor, int ycor, int scale) {
      super(5*scale, 1, xcor, ycor, 0, 0, 75, 75, "Boomerang.jpg");
      health = 5*scale;
    }
  }

  public class Shooter extends Enemy {
    Shooter(int xcor, int ycor, int scale) {
      super(10*scale, 1, xcor, ycor, 0, -3, 50, 75, "Shooter.jpg");
    }
    public void shoot() {
      add(new bullet3( xcor, ycor));
    }
  }

  public class Spinner extends Enemy {
    Spinner(int xcor, int ycor, int scale) {
      super(30*scale, 1, xcor, ycor/*random movement*/50, 50, "Spinner.jpg");
    }
  }

  public class Waver extends Enemy {
    Waver(int xcor, int ycor, int scale) {
      super(100*scale, 1, xcor, ycor, 0, -3, 50, 50, "Spinner.jpg");
    }
    public void shoot() {
      add(new bullet2(xcor-20, ycor);
      add(new bullet2(xcor-15, ycor);
      add(new bullet2(xcor-10, ycor);
      add(new bullet2(xcor-5, ycor);
      add(new bullet2(xcor, ycor);
      add(new bullet2(xcor+5, ycor);
      add(new bullet2(xcor+10, ycor);
      add(new bullet2(xcor+15, ycor);
      add(new bullet2(xcor+20, ycor);
    }
  }
  public class Desecrator extends Enemy {
    Desecrator(int xcor, int ycor, int scale) {
      super(10*scale, 1, xcor, ycor, /*AI*/20, 20, "Desecrator.jpg");
    }
    public void shoot() {
      //hmm?
    }
  }
  public class Zamansky extends Enemy {
    Zamansky(int scale) {
      super(500*scale, 1, 400, 300, 0, 0, 200, 200, "Mr.Z.jpg");
    }
    public void attack1() {
    }//2,3,4,5,etc.
  }
}

