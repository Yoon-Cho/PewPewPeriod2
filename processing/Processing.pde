// Variables
Intro intro;
Death death;
ArrayList<Enemy> enemies;
ArrayList<Projectile> EnemyShots;
ArrayList<Projectile> MyShots;


// Set FullScreen = On
boolean sketchFullScreen() {
  return true;
}

// Setup Method
void setup()
{
  size(displayWidth, displayHeight, P2D);
  intro = new Intro(displayWidth, displayHeight);
  death = new Death(displayWidth, displayHeight);
  enemies = new ArrayList<Enemy>();
  EnemyShots = new ArrayList<Projectile>();
  MyShots = new ArrayList<Projectile>();
}

// Draw Method
void draw()
{
  intro.transition();

  if (mousePressed)
    exit();
    
  removeFromGrid(){};
  
}


public void removeFromGrid() {
  for (int unit = 0; unit < enemies.getSize (); unit++) {
    if (!getDead()) {
      explode(enemies.get(unit).getX(),enemies.get(unit).getY());
      enemies.remove(unit);
      unit--;    
    }
  }
}

public void explode(int xcor, int ycor) {
  //load images
}

