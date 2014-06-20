public class Projectile extends Unit
{
  // Constructors
  public Projectile() {}
  public Projectile(int damage, int xcor, int ycor, int xmove, int ymove, int w, int h, String image)
  {
    super(0, damage, xcor, ycor, xmove, ymove, w, h, image);
  }

  // Bullet1 Projectile
  public class bullet1 extends Projectile
  {
    public bullet1(int damage, int xcor, int ycor)
    {
      super(damage, xcor, ycor, 0, 5, 5, 10, "bullet1.png");
    }
  }
  
  // Bullet2 Projectile
  public class bullet2 extends Projectile
  {
    public bullet2(int damage, int xcor, int ycor)
    {
      super(damage, xcor, ycor, 0, 5, 10, 10, "bullet2.png");
    }
  }
  
  // Bullet3 Projectile
  public class bullet3 extends Projectile
  {
    public bullet3(int damage, int xcor, int ycor)
    {
      super(damage, xcor, ycor, 0, 5, 15, 15, "bullet3.png");
    }
  }
  
  public class bulletW extends Projectile
  {
    public bulletW(int xcor, int ycor)
    {
      super(3, xcor, ycor, 0, 5, 15, 15, "bulletW.png");
    }
  }
  
}

