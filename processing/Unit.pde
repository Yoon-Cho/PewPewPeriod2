public class Unit
{
  // Instance Variables
  /* Attributes
    _health -> Unit's health
    _damage -> Amount of damage dealt By Unit
  */
  protected double _health;
  protected double _damage;
  
  // Constructor
  public Unit() {}
  
  // Accessor Methods
  public double getHealth() { return _health; }
  public double getDamage() { return _damage; }
  
  // Modify Health Method3
  /* Parameter(s): double amount -> Amount of Change
                   Domain: (-inf, inf)
                   Returns:      amount (param 1)
  */
  public double modifyHealth(double amount)
  {
    _health += amount;
    return amount;
  }

  // Modify Damage Method
  /* Parameter(s): double amount -> Amount of Change
                   Domain: (-inf, inf)
     Returns:      amount (param 1)
  */
  public double modifyDamage(double amount)
  {
    _damage += amount;
    return amount;
  }
}

