public class Enemy extends Unit
{
  // Constructor
  public Enemy() { 
    super();
    if (Math.random() > 50)
      isWhite = true;
    else
      isWhite = false;
  }

  void shoot(int numB) {
    Projectile[] shots = new Projectile[numB];
  }
}

