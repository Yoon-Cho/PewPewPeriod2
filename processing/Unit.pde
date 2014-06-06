public class Unit {

  protected double health;
  protected double damage;

  // Constructor
  Unit() {

    health = 0;
    damage = 0;
  }

  // Accessor Methods
  public double getHealth() { 
    return health;
  }
  public double getDamage() { 
    return damage;
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
}
