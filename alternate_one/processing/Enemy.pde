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
}
