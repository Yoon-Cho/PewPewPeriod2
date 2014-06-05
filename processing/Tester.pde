// Setup Method
void setup()
{
  background(0);
  
  size(800, 600);
  
  Player player = new Player();
  
  println("Health: " + player.getHealth());
  println("Damage: " + player.getDamage());
}

// Draw Method
void draw()
{
  if (mousePressed){
    exit();
  }
}

