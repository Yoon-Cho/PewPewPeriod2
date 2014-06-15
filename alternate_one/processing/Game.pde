public class Game
{
  // Instance Variables
  private Player _player;
  private ArrayList<Enemy> _enemies;
  private ArrayList<Projectile> _projectiles;
  
  // Constructor
  public Game()
  {
    _enemies = new ArrayList<Enemy>();
    _projectiles = new ArrayList<Projectile>();
    _player = new Player(1, 1, width / 2, height * 3 / 4, 100, 100, 5);
    for (int i = 0; i < 5; i++)
      _enemies.add( new Enemy( 1, 1, (int) random(0, width + 1), (int) random(0, height / 4), 0, 0 ) );
  }
  
  // Play Method
  public void play()
  {
    background(0);
    
    checkBoundaries();
    move();
    display();
  }
    
  
  // Display Method
  private void display()
  {
    image( _player.getImage(), _player.getXCor(), _player.getYCor() );
    
    for (Enemy e : _enemies)
      image( e.getImage(), e.getXCor(), e.getYCor() );
    
    for (Projectile p : _projectiles)
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
    
    for (Projectile p : _projectiles)
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
    
    for (Projectile p : _projectiles)
    {
      if ( ( (p.getXCor() > width) || (p.getXCor() < 0) ) ||
           ( (p.getYCor() > height) || (p.getYCor() < 0) )
         )
         remove.add(p);
    }
    
    _projectiles.removeAll(remove);
    
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
        _projectiles.add( new Projectile(1, _player.getXCor(), _player.getYCor(), 0, -100 ) );
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
    }
  }
}
