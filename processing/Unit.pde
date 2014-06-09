public class Unit {

  protected double health;
  protected double damage;
  protected boolean isWhite;
  protected int xcor, ycor;
  protected int wide;
  protected int tall;
  protected int[] hitbox;

  // Constructor

  Unit() {
    health = 1;
    damage = 0;
  }

  Unit(int health, int damage, boolean isWhite, int xcor, int ycor, int wide, int tall) {
    this.health = health;
    this.damage = damage;
    this.isWhite = isWhite;
    this.xcor = xcor;
    this.ycor = ycor;
    this.wide = wide;
    this.tall = tall;
  }

  public int[] getHitbox() { //This will be used for both projectiles and units
    hitbox = new int[4];
    //(Max x, Min x, Max y, Min y)
    hitbox[0] = xcor + wide/2;
    hitbox[1] = xcor - wide/2;
    hitbox[2] = ycor + tall/2;
    hitbox[3] = ycor - tall/2;
    return hitbox;
  }

  public int contact(ArrayList<Projectile> others) {
    int damage = 0;
    int[] box = getHitbox();
    for (int unit = 0; unit < others.size (); unit++) {
      if ((others.get(unit).getX() <= box[0] && others.get(unit).getX() >= box[1]) && (others.get(unit).getY() <= box[2] && others.get(unit).getY() >= box[3])) { 
        damage+= others.get(unit).getDamage();
        //        others.get(unit).removeFromGrid();
      }
    }
    return damage;
  }


  // Accessor Methods
  public double getHealth() { 
    return health;
  }
  public double getDamage() { 
    return damage;
  }

  public int getX() { 
    return xcor;
  }
  public int getY() { 
    return ycor;
  }

  // Set Methods
  public void setX(int x) { 
    xcor = x;
  }
  public void setY(int y) { 
    ycor = y;
  }

  // Modify Health Method3
  /* Parameter(s): double amount -> Amount of Change
   Domain: (-inf, inf)
   Returns:      amount (param 1)
   */
  public double modifyHealth(double amount)
  {
    health += amount;
    return amount;
  }

  // Modify Damage Method
  /* Parameter(s): double amount -> Amount of Change
   Domain: (-inf, inf)
   Returns:      amount (param 1)
   */
  public double modifyDamage(double amount)
  {
    damage += amount;
    return amount;
  }

  void swap() {
    if (isWhite == true) 
      isWhite = false;
    else
      isWhite = true;
  }

  void setHitbox(int h, int w) {
    hitbox[0] = h;
    hitbox[1] = w;
  }
}

