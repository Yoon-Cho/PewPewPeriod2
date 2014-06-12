public class Intro
{
  // Instance Variables
  private PImage intro;
  private PImage menu;
  private PImage game;
  private int tint;

  // Constructors
  public Intro()
  {
    intro = loadImage("intro.jpg");
    menu = loadImage("menu.jpg");

    intro.resize(800, 600);
    menu.resize(800, 600);
  }

  public Intro(int w, int h)
  {
    this();

    intro.resize(w, h);
    menu.resize(w, h);
  }

  // Transition Method
  public boolean transition()
  {
    background(intro);

    tint(255, 255, 255, tint);
    image(menu, 0, 0);

    if ( tint < 255 )
    {
      tint += 5;
      return true;
    } else
      return false;
  }
}

