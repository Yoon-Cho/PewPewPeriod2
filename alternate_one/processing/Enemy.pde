public class Enemy extends Unit
{
  // Constructor
  public Enemy(int health, int damage, int xcor, int ycor, int xmove, int ymove)
  {
    super(health, damage, xcor, ycor, xmove, ymove);
    
    _image = loadImage("enemy.jpg");
    _image.resize(100, 100);
  }
}
