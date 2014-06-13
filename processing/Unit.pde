public class Unit {

  protected double health;
  protected double damage;
  protected boolean isWhite;
  protected int xcor, ycor;
  protected int wide;
  protected int tall;
  protected int[] hitbox;
  protected boolean isDead;

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
    isDead = false;
  }

  void death() {
    isDead = true;
  }

  boolean getDead() {
    return isDead;
  }

  void setWidth(int wide) {
    this.wide = wide;
  }

  void setHeight(int tall) {
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
      Projectile object = others.get(unit);
      if ((object.getX() <= box[0] && object.getX() >= box[1]) && (object.getY() <= box[2] && object.getY() >= box[3])) { 
        damage += object.getDamage();
        if (this.getHealth() <= 0) {
          if (this instanceof Player)
            death.transition();
          else
            object.death();
        }
      }
    }
    return damage;
  }

  public int collision(ArrayList<Enemy> others) {
    int damage = 0;
    int[] box = getHitbox();
    for (int unit = 0; unit < others.size (); unit++) {
      Enemy object = others.get(unit);
      if ((object.getX() <= box[0] && object.getX() >= box[1]) && (object.getY() <= box[2] && object.getY() >= box[3])) { 
        death.transition();
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
}

