public class Player extends Unit
{
  // Instance Variables
  private int _bombs;
  private int _power;

  // Constructors
  public Player()
  {
    super(50, 1, width / 2, height * 3 / 4, 50, 50, 50, 50, "player.jpg");
    _power = 0;
    _bombs = 100;
  }

  public Player(int health, int damage, int xcor, int ycor, int xmove, int ymove, int w, int h, String image, int bombs)
  {
    super(health, damage, xcor, ycor, xmove, ymove, w, h, image);

    _bombs = bombs;
  }

  // Accesor Method
  public int getBombs() { 
    return _bombs;
  }

  // Modify Bombs Method
  public void modifyBombs(int change) { 
    _bombs += change;
  }

  // Set Bombs Method
  public void setBombs(int bombs) { 
    _bombs = bombs;
  }

  public void powerup() {
    _power++; 
    setDamage(1+_power/10);
  }

  public Projectile shoot() {
    if (_power >= 100){
      Projectile b = new bullet3(_damage, xcor, ycor);
      return b;
    }else if (_power >= 30){
      Projectile b = new bullet2(_damage, xcor, ycor);
      return b;
    }else{
      Projectile b = new bullet1(_damage, xcor, ycor);
      return b;
    }
  }
}

