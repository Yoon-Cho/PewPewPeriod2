public class Game
{
  // Instance Variables
  private Player _player;
  private ArrayList<Enemy> _enemies;
  private ArrayList<Projectile> _playerProjectiles;
  private ArrayList<Projectile> _enemyProjectiles;
  
  // Constructor
  public Game()
  {
    _enemies = new ArrayList<Enemy>();
    _playerProjectiles = new ArrayList<Projectile>();
    _enemyProjectiles = new ArrayList<Projectile>();
    
    _player = new Player();
    for (int i = 0; i < 5; i++)
      _enemies.add( new Enemy() );
  }
  
  // Play Method
  public void play()
  {
    if ( gameOver() )
      exit();
    
    background(0);
    checkBoundaries();
    removeDeadEnemies();
    hitPlayer();
    hitEnemy();
    move();
    display();
  }
    
  
  // Display Method
  private void display()
  {
    image( _player.getImage(), _player.getXCor(), _player.getYCor() );
    
    for (Enemy e : _enemies)
      image( e.getImage(), e.getXCor(), e.getYCor() );
    
    for (Projectile p : _playerProjectiles)
      image( p.getImage(), p.getXCor(), p.getYCor() );
      
    for (Projectile p : _enemyProjectiles)
      image( p.getImage(), p.getXCor(), p.getYCor() );
  }
  
  // Move Method
  private void move()
  {
    for (Enemy e : _enemies)
    {
      e.modifyXCor( e.getXMove() );
      e.modifyYCor( e.getYMove() );
    }
    
    for (Projectile p : _playerProjectiles)
    {
      p.modifyXCor( p.getXMove() );
      p.modifyYCor( p.getYMove() );
    }
    
    for (Projectile p : _enemyProjectiles)
    {
      p.modifyXCor( p.getXMove() );
      p.modifyYCor( p.getYMove() );
    }
  }
  
  // Check Boundaries Method
  private void checkBoundaries()
  {
    // Projectile Boundaries
    ArrayList<Projectile> remove = new ArrayList<Projectile>();
    
    for (Projectile p : _playerProjectiles)
    {
      if ( ( (p.getXCor() > width) || (p.getXCor() < 0) ) ||
           ( (p.getYCor() > height) || (p.getYCor() < 0) )
         )
         remove.add(p);
    }
    
    _playerProjectiles.removeAll(remove);
    
    remove = new ArrayList<Projectile>();
    
    for (Projectile p : _enemyProjectiles)
    {
      if ( ( (p.getXCor() > width) || (p.getXCor() < 0) ) ||
           ( (p.getYCor() > height) || (p.getYCor() < 0) )
         )
         remove.add(p);
    }
    
    _enemyProjectiles.removeAll(remove);
    
    // Enemy Boundaries
    for (Enemy e : _enemies)
    {
      if ( e.getXCor() > width)
        e.setXCor(width - 50);
      else if ( e.getXCor() < 0 )
        e.setXCor(50);
      
      if ( e.getYCor() > height )
        e.setYCor(height - 50);
      else if ( e.getYCor() < 0 )
        e.setYCor(50);
    }
    
    // Player Boundaries
    if ( _player.getXCor() > width)
      _player.setXCor(width - 50);
    else if ( _player.getXCor() < 0 )
      _player.setXCor(50);
    
    if ( _player.getYCor() > height )
      _player.setYCor(height - 50);
    else if ( _player.getYCor() < 0 )
      _player.setYCor(50);
  }
  
  // Keyboard Input
  private void keyPressed()
  {
    switch(key)
    {
      case 'W':
      case 'w':
        _player.modifyYCor( _player.getYMove() * -1 );
      break;      
      case 'S':
      case 's':
        _player.modifyYCor( _player.getYMove() );
      break;
        
      case 'A':
      case 'a':
        _player.modifyXCor( _player.getXMove() * -1 );
      break;
        
      case 'D':
      case 'd':
        _player.modifyXCor( _player.getXMove() );
      break;
        
      case 'B':
      case 'b':
        detonateBomb();
      break;
      
      case ' ':
        _playerProjectiles.add( new Projectile( _player.getDamage(), _player.getXCor(), _player.getYCor(), 0, -100, 50, 50, "projectile.jpg" ) );
      break;
    }
    
    if (key == CODED)
    {
      switch(keyCode)
      {
        case UP:
          _player.modifyYCor( _player.getYMove() * -1 );
        break;
        
        case DOWN:
          _player.modifyYCor( _player.getYMove() );
        break;
        
        case LEFT:
          _player.modifyXCor( _player.getXMove() * -1 );
        break;
        
        case RIGHT:
          _player.modifyXCor( _player.getXMove() );
        break;
        
        case CONTROL:
          detonateBomb();
        break;
      }
    }
  }
  
  // Detonate Bomb Method
  private void detonateBomb()
  {
    if ( _player.getBombs() > 0 )
    {
      _player.modifyBombs(-1);
      _enemies.clear();
      _enemyProjectiles.clear();
    }
  }
  
  // Hit Enemy Method
  private void hitEnemy()
  {
    for (Enemy e : _enemies)
    {
      for (Projectile p : _playerProjectiles)
      {
        int centerX = p.getXCor() + ( p.getWidth() / 2 );
        int centerY = p.getYCor() + ( p.getWidth() / 2 );
        
        if ( ( ( centerX >= e.getXCor() ) && ( centerX <= ( e.getXCor() + e.getWidth() ) ) ) &&
             ( ( centerY >= e.getYCor() ) && ( centerY <= ( e.getYCor() + e.getHeight() ) ) )
           )
           e.modifyHealth( p.getDamage() * -1 );
      }
    }
  }
  
  // Hit Player Method
  private void hitPlayer()
  {
    for (Projectile p : _enemyProjectiles)
    {
      int centerX = p.getXCor() + ( p.getWidth() / 2 );
      int centerY = p.getYCor() + ( p.getWidth() / 2 );
      
      if ( ( ( centerX >= _player.getXCor() ) && ( centerX <= ( _player.getXCor() + _player.getWidth() ) ) ) &&
           ( ( centerY >= _player.getYCor() ) && ( centerY <= ( _player.getYCor() + _player.getHeight() ) ) )
         )
         _player.modifyHealth( p.getDamage() * -1 );
    }
  }
  
  // Remove Dead Enemies
  private void removeDeadEnemies()
  {
    ArrayList<Enemy> remove = new ArrayList<Enemy>();
    
    for (Enemy e : _enemies)
    {
      if ( e.getHealth() <= 0 )
        remove.add(e);
    }
    
    _enemies.removeAll(remove);
  }
  
  // Fire on Player Method
  private void fireOnPlayer()
  {
    for (Enemy e : _enemies)
    {
      if ( int( random(100) ) < 35 )
      {
        Projectile p = new Projectile( e.getDamage(), e.getXCor(), e.getYCor(), ( p.getXCor() - e.getXCor() ) / 10, ( p.getYCor() - e.getYCor() ) / 10, 50, 50, "projectile.jpg" );
        
        PGraphics pg = 
  
  // Angle to Player Method
  private float angleToPlayer(Enemy e)
  {
    int deltaX = e.getXCor() - _player.getXCor();
    int deltaY = e.getYCor() - _player.getYCor();
    float deg = degrees( atan2( deltaY, deltaX ) );
    deg = deg * -1;
    return deg;
  }

  // Game Over Method
  private boolean gameOver()
  {
    boolean response = false;
    if ( _player.getHealth() <= 0 )
    {
      print("You Lose.");
      response = true;
    }
    else if ( _enemies.size() == 0 )
    {
      print("You Win!");
      response = true;
    }
    
    return response;
  }
}
