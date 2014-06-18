public class Projectile extends Unit
{
  // Constructor
  public Projectile(int damage, int xcor, int ycor, int xmove, int ymove, int w, int h, String image)
  {
    super(0, damage, xcor, ycor, xmove, ymove, w, h, image);
  }

  // Bullet1 Projectile
  public class bullet1 extends Projectile
  {
    public bullet1(int xcor, int ycor)
    {
      super(1, xcor, ycor, 0, 5, 5, 15, "bullet1.jpg");
    }
  }
  
  // Bullet2 Projectile
  public class bullet2 extends Projectile
  {
    public bullet2(int xcor, int ycor)
    {
      super(2, xcor, ycor, 0, 5, 15, 15, "bullet2.jpg");
    }
  }
  
  // Bullet3 Projectile
  public class bullet3 extends Projectile
  {
    public bullet3(int xcor, int ycor)
    {
      super(3, xcor, ycor, 0, 5, 20, 20, "bullet3.jpg");
    }
  }
  
  public class bulletW extends Projectile
  {
    public bulletW(int xcor, int ycor)
    {
      super(3, xcor, ycor, 0, 5, 15, 15, "bulletW.jpg");
    }
  }
  
}

