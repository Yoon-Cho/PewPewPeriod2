 public class Enemy extends Unit
{
  // Constructors
  public Enemy()
  {
    super( 1, 1, (int) random(0, width + 1), (int) random(0, height / 4), 0, 0, 100, 100, "enemy.jpg" );
  }

  public Enemy(int health, int damage, int xcor, int ycor, int xmove, int ymove, int w, int h, String image)
  {
    super(health, damage, xcor, ycor, xmove, ymove, w, h, image);
  }

  // Shoot Method
  public void shoot(Game game)
  {
    Projectile p = new Projectile();
    game.addEnemyProjectile(p.new bullet1(1,_xcor, _ycor) );
  }

  // Dud Class Enemy
  public class Dud extends Enemy
  {
    public Dud(int xcor, int ycor)
    {
      super(1, 1, xcor, ycor, 0, 0, 50, 50, "Dud.png");
    }
    
    public void shoot(Game game){
      
    }
    
  }

  // Charger Class Enemy
  public class Charger  extends Enemy
  {
    public Charger(int xcor, int ycor, Game game)
    {
      super(1, 1, xcor, ycor, ( _game.getPlayer().getXCor() - xcor ) / 100, ( _game.getPlayer().getYCor() - ycor ) / 100  , 50, 50, "Charger.png");
    }
    public void shoot(Game game){
      
    }
  }

  // Boomerang Class Enemy
  public class Boomerang extends Enemy
  {
    public Boomerang(int xcor, int ycor, int scale)
    {
      super(5*scale, 1, xcor, ycor, 0, 3, 75, 75, "Boomerang.png");
    }
  }

  // Shooter Class Enemy
  public class Shooter extends Enemy
  {
    public Shooter(int xcor, int ycor, int scale)
    {
      super(10*scale, 1, xcor, ycor, 0, 1, 50, 75, "Shooter.png");
    }
    
    public void shoot(Game game)
    {
      Projectile p = new Projectile();
      game.addEnemyProjectile( p.new bullet3(1, _xcor, _ycor));
    }
  }

  // Spinner Class Enemy
  public class Spinner extends Enemy
  {
    public Spinner(int xcor, int ycor, int scale)
    {
      super(30*scale, 1, xcor, ycor, int( random(5, 16) ), int( random(5, 16) ), 50, 50, "Spinner.png");
    }
  }

  // Waver Class Enemy
  public class Waver extends Enemy
  {
    public Waver(int xcor, int ycor, int scale)
    {
      super(100*scale, 1, xcor, ycor, 0, 0, 150, 65, "Waver.png");
    }
    
    public void shoot(Game game)
    {
      Projectile p = new Projectile();
      
      game.addEnemyProjectile( p.new bulletW(_xcor-20, _ycor) );
      game.addEnemyProjectile( p.new bulletW(_xcor-15, _ycor) );
      game.addEnemyProjectile( p.new bulletW(_xcor-10, _ycor) );
      game.addEnemyProjectile( p.new bulletW(_xcor-5, _ycor) );
      game.addEnemyProjectile( p.new bulletW(_xcor, _ycor) );
      game.addEnemyProjectile( p.new bulletW(_xcor+5, _ycor) );
      game.addEnemyProjectile( p.new bulletW(_xcor+10, _ycor) );
      game.addEnemyProjectile( p.new bulletW(_xcor+15, _ycor) );
      game.addEnemyProjectile( p.new bulletW(_xcor+20, _ycor) );
    }
  }
  
  // Zamansky Class Enemy (Final Boss)
  public class Zamansky extends Enemy
  {
    public Zamansky(int scale)
    {
      super(500*scale, 1, 400, 300, 0, 0, 200, 200, "MrZ.jpg");
    }
    
    public void attack1() {
    }//2,3,4,5,etc.
  }
}

