public class Enemy extends Unit
{
  int angle;

  /*
  180          360
   
   
   
   270
   */


  // Constructor
  public Enemy() { 
    super();
    angle = 270;
    if (Math.random() > 50)
      isWhite = true;
    else
      isWhite = false;
  }

  void shoot(int numB) {
    Projectile[] shots = new Projectile[numB];
  }

  double findAngle(Player me) {
    int x1 = this.getX();
    int y1 = this.getY();
    int x2 = me.getX();
    int y2 = me.getY();
    int deltaX = me.getX() - this.getX();
    int deltaY = me.getY() - this.getY();
    double answer = (double)Math.toDegrees(Math.atan2(deltaX, deltaY));
    if (answer < 0)
      angle += 360;
    return answer;
  }
}

