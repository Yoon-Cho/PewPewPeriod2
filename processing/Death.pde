public class Death
{
  // Instance Variables
  private PImage death;

  // Constructors
  public Death()
  {
    death = loadImage("death.jpg");
    death.resize(800, 600);
  }

  public Death(int w, int h)
  {
    this();
    death.resize(w, h);
  }

  // Transition Method
  public void transition()
  {
    background(death);
  }
  
  public void restart(){
   draw(); 
  }
}

