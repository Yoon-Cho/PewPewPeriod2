public class Player extends Unit
{
  // Instance Variables
  private int _bombs;
  
  // Constructors
  public Player()
  {
    super(50, 1, width / 2, height * 3 / 4, 50, 50, 100, 100, "player.jpg");
    
    _bombs = 100;
  }
  
  public Player(int health, int damage, int xcor, int ycor, int xmove, int ymove, int w, int h, String image, int bombs)
  {
    super(health, damage, xcor, ycor, xmove, ymove, w, h, image);
    
    _bombs = bombs;
  }
  
  // Accesor Method
  public int getBombs() { return _bombs; }
  
  // Modify Bombs Method
  public void modifyBombs(int change) { _bombs += change; }
  
  // Set Bombs Method
  public void setBombs(int bombs) { _bombs = bombs; }
}
