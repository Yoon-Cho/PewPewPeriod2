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

  // Dud Class Enemy
  public class Dud extends Enemy
  {
    public Dud(int xcor, int ycor)
    {
      super(1, 1, xcor, ycor, 0, 0, 25, 25, "Dud.jpg");
    }
  }

  // Charger Class Enemy
  public class Charger extends Enemy
  {
    public Charger(int xcor, int ycor)
    {
      super(1, 1, xcor, ycor, /*use the angle to player formula*/, 50, 50, "Charger.jpg");
    }
  }

  // Boomerang Class Enemy
  public class Boomerang extends Enemy
  {
    public Boomerang(int xcor, int ycor, int scale)
    {
      super(5*scale, 1, xcor, ycor, 0, 0, 75, 75, "Boomerang.jpg");
    }
  }

  // Shooter Class Enemy
  public class Shooter extends Enemy
  {
    public Shooter(int xcor, int ycor, int scale)
    {
      super(10*scale, 1, xcor, ycor, 0, -3, 50, 75, "Shooter.jpg");
    }
    
    public void shoot()
    {
      add(new bullet3( xcor, ycor));
    }
  }

  // Spinner Class Enemy
  public class Spinner extends Enemy
  {
    public Spinner(int xcor, int ycor, int scale)
    {
      super(30*scale, 1, xcor, ycor/*random movement*/50, 50, "Spinner.jpg");
    }
  }

  // Waver Class Enemy
  public class Waver extends Enemy
  {
    public Waver(int xcor, int ycor, int scale)
    {
      super(100*scale, 1, xcor, ycor, 0, -3, 150, 65, "Waver.jpg");
    }
    
    public void shoot() {
      add(new Projectile.bulletW(xcor-20, ycor);
      add(new Projectile.bulletW(xcor-15, ycor);
      add(new Projectile.bulletW(xcor-10, ycor);
      add(new Projectile.bulletW(xcor-5, ycor);
      add(new Projectile.bulletW(xcor, ycor);
      add(new Projectile.bulletW(xcor+5, ycor);
      add(new Projectile.bulletW(xcor+10, ycor);
      add(new Projectile.bulletW(xcor+15, ycor);
      add(new Projectile.bulletW(xcor+20, ycor);
    }
  }
  
  // Zamansky Class Enemy (Final Boss)
  public class Zamansky extends Enemy
  {
    public Zamansky(int scale)
    {
      super(500*scale, 1, 400, 300, 0, 0, 200, 200, "MrZ.jpg");
    }
    
    public void attack1() {
    }//2,3,4,5,etc.
  }
}

