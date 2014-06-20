public class Game
{
  // Instance Variables
  private Ticks _ticks;
  private Player _player;
  private ArrayList<Enemy> _enemies;
  private ArrayList<Projectile> _playerProjectiles;
  private ArrayList<Projectile> _enemyProjectiles;
  private int BulletTime;
  
  private PImage _background;
  private PImage _endScreen;
  private int _tint;

  // Constructor
  public Game()
  {
    _ticks = new Ticks(this);
    _enemies = new ArrayList<Enemy>();
    _playerProjectiles = new ArrayList<Projectile>();
    _enemyProjectiles = new ArrayList<Projectile>();

    _player = new Player();
    
    _background = loadImage("game_background.jpg");
    _endScreen = loadImage("lose.jpg");
    
    _background.resize(width, height);
    _endScreen.resize(width, height);
  }

  // Accessor Methods
  public Ticks getTicks() { 
    return _ticks;
  }
  public Player getPlayer() { 
    return _player;
  }
  public ArrayList<Enemy> getEnemies() { 
    return _enemies;
  }
  public ArrayList<Projectile> getPlayerProjectiles() { 
    return _playerProjectiles;
  }
  public ArrayList<Projectile> getEnemyProjectiles() { 
    return _enemyProjectiles;
  }

  // Play Method
  public boolean play()
  {
    background(0);
    _ticks.process();
    checkBoundaries();
    removeDeadEnemies();
    hitPlayer();
    hitEnemy();
    fireOnPlayer();
    move();
    display();
    
    return gameOver();
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
    ArrayList<Enemy> remove1 = new ArrayList<Enemy>();

    for (Enemy e : _enemies)
    {
      if ( ( (e.getXCor() > width) || (e.getXCor() < 0) ) ||
        ( (e.getYCor() > height) || (e.getYCor() < 0) )
        )
        remove1.add(e);
    }

    _enemies.removeAll(remove1);

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
      _playerProjectiles.add(_player.shoot());
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
      _player.powerup();
    }

    _enemies.removeAll(remove);
  }

  private void removeAll() {
    _enemies.clear();
  }

  // Add Methods
  public void addEnemy(Enemy e) { 
    _enemies.add(e);
  }
  public void addEnemyProjectile(Projectile p) { 
    _enemyProjectiles.add(p);
  }

  // Fire On Players
  private void fireOnPlayer()
  {
    for (Enemy e : _enemies)
    {
      if ( int( random(500) ) < 2 ) {
        e.shoot(this);
      }
    }
  }

  // Game Over Method
  private boolean gameOver()
  {
    boolean response = false;

    if ( _player.getHealth() <= 0 )
      response = true;

    return response;
  }
  
  // End Game Method
  public boolean end()
  {
    background(0);
    
    tint(255, _tint);
    image(_endScreen, 0, 0);
    
    if (_tint >= 255)
      return false;
    else
    {
      _tint += 1;
      return true;
    }
  }
}

