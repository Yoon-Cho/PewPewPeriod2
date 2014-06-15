public class Projectile extends Unit
{
  // Constructor
  public Projectile(int damage, int xcor, int ycor, int xmove, int ymove)
  {
    super(0, damage, xcor, ycor, xmove, ymove);
    
    _image = loadImage("projectile.jpg");
    _image.resize(50, 50);
  }
}
