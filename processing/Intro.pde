public class Intro
{
  // Instance Variable(s)
  private PImage _intro;
  private int _tint;
  
  // Constructor
  public Intro(int w, int h)
  {
    _intro = loadImage("intro.jpg");
    
    _intro.resize(w, h);
  }
  
  // Fade In Method
  public boolean fadeIn()
  {
    background(0);
    
    tint(255, _tint);
    image(_intro, 0, 0);
    
    if (_tint >= 255)
      return false;
    else
    {
      _tint += 1;
      return true;
    }
  }
  
  // Fade Out Method
  public boolean fadeOut()
  {
    background(0);
    tint(255, _tint);
    image(_intro, 0, 0);
    
    if (_tint <= 0)
      return false;
    else
    {
      _tint -= 1;
      return true;
    }
  }
}

