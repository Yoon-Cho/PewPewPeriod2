public class Unit
{
  // Instance Variables
  protected int _health;
  protected int _damage;
  protected PImage _image;
  protected int _xcor;
  protected int _ycor;
  protected int _xmove;
  protected int _ymove;
  protected int _width;
  protected int _height;

  // Constructor
  public Unit(int health, int damage, int xcor, int ycor, int xmove, int ymove, int w, int h, String image)
  {
    _health = health;
    _damage = damage;
    _xcor = xcor;
    _ycor = ycor;
    _xmove = xmove;
    _ymove = ymove;
    _width = w;
    _height = h;
    
    _image = loadImage(image);
    _image.resize(w, h);
  }
  
  // Accessor Methods
  public int getHealth() { return _health; }
  public int getDamage() { return _damage; }
  public int getXCor() { return _xcor; }
  public int getYCor() { return _ycor; }
  public int getXMove() { return _xmove; }
  public int getYMove() { return _ymove; }
  public int getWidth() { return _width; }
  public int getHeight() { return _height; }
  public PImage getImage() { return _image; }
  
  // Modify Methods
  public void modifyHealth(int change) { _health += change; }
  public void modifyDamage(int change) { _damage += change; }
  public void modifyXCor(int change) { _xcor += change; }
  public void modifyYCor(int change) { _ycor += change; }
  public void modifyXMove(int change) { _xmove += change; }
  public void modifyYMove(int change) { _ymove += change; }
  public void modifyWidth(int change) { _width += change; }
  public void modifyHeight(int change) { _height += change; }
  
  // Set Methods
  public void setHealth(int health) { _health = health; }
  public void setDamage(int damage) { _damage = damage; }
  public void setXCor(int xcor) { _xcor = xcor; }
  public void setYCor(int ycor) { _ycor = ycor; }
  public void setXMove(int xmove) { _xmove = xmove; }
  public void setYMove(int ymove) { _ymove = ymove; }
  public void setWidth(int w) { _width = w; }
  public void setHeight(int h) { _height = h; }
  public void setImage(PImage image) { _image = image; }
}

