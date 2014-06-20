public class Menu
{
  // Instance Variable(s)
  private PImage _menu;
  private int _tint;
  
  // Constructor
  public Menu(int w, int h)
  {
    _menu = loadImage("menu.jpg");
    
    _menu.resize(w, h);
  }
  
  // Fade In Method
  public boolean fadeIn()
  {
    background(0);
    
    tint(255, _tint);
    image(_menu, 0, 0);
    
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
    image(_menu, 0, 0);
    
    if (_tint <= 0)
      return false;
    else
    {
      _tint -= 1;
      return true;
    }
  }
  
  // Display Method
  public void display()
  {
    background(_menu);
    
    
    textAlign(CENTER);
    textSize(100);
    text("M.A.D.", width / 2, height / 5+50);
    
    textAlign(CENTER);
    textSize(53);
    text("Mutually Assured Destruction", width / 2, height / 3);
    
    PImage launch = loadImage("launch.jpg");
    launch.resize(500, 500);
    
    image(launch, width / 2 - 250, height / 2);
  }
  
  // Selected Method
  public int selected()
  {
    int result = -1;
    
    if (mousePressed)
    {
      if ( ( ( mouseX >= (width / 2 - 250) ) || ( mouseX <= (width / 2 + 250) ) ) &&
           ( ( mouseY >= (height / 2) ) || ( mouseY <= (height / 2 + 500) ) )
         )
         result = 0;
    }
    
    return result;
  }
}
