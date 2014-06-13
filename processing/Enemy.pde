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

/*
Ideas for enemies:
Chargers - use best search?
Regular shooters that spawn randomly
Spinners - They shoot projectiles that move in a random manner towards you (Bad search thingy)
Large ships - shoot aimed projectiles directly
Spreaders - shoot spreading waves
Desecrators - leave projectiles after death
Mr.Z - multiple attacks - circle waves of shots
                        - random death road generator
                        - super beam
                        - create more enemies
*/

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

