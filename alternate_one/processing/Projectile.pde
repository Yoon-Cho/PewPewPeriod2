public class Projectile extends Unit
{
  // Constructor
  public Projectile(int damage, int xcor, int ycor, int xmove, int ymove, int w, int h, String image)
  {
    super(0, damage, xcor, ycor, xmove, ymove, w, h, image);
  }

  public class bullet1 extends Projectile {
    bullet1(int xcor, int ycor) {
      super(1, xcor, ycor, 0, 5, 5, 5, "bullet1.jpg");
    }
  }
  public class bullet2 extends Projectile {
    bullet2(int xcor, int ycor) {
      super(2, xcor, ycor, 0, 5, 7, 7, "bullet2.jpg");
    }
  }
  public class bullet3 extends Projectile {
    bullet3(int xcor, int ycor) {
      super(3, xcor, ycor, 0, 5, 10, 10, "bullet3.jpg");
    }
  }
}

