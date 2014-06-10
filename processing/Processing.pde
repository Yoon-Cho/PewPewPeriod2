// Variables
Intro intro;
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
}

