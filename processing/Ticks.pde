public class Ticks
{
  // Instance Variables
  private int _startTime;
  private int _ticks;
  private int _scale;
  private Game _game;

  // Constructor
  public Ticks(Game game)
  {
    _startTime = millis() / 1000;
    _ticks = ( millis() / 1000 ) - _startTime;
    _scale = 1;
    _game = game;
  }

  // Accesor Methods
  public int getTicks() { 
    return _ticks;
  }
  public int getScale() { 
    return _scale;
  }

  // Increase Ticks Method
  private void increase() { 
    _ticks = ( millis() / 1000 ) - _startTime;
  }

  // Random Generator Method
  private void randomGenerator()
  {
    int choice = int( random(10) );
    Enemy e = new Enemy();

    switch( choice )
    {
    case 0: 
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Dud(width/8*(x+2), height/3));
      break;
    case 1: 
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Dud(width/8*(x+2), height/3));
      break;
    case 2: 
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Charger(width/8*(x+2), height/3, _game));
      break;
    case 3: 
      for (int x = 0; x < 4; x++)
        _game.addEnemy(e.new Boomerang(width/7*(x+2), 300, _scale));
      break;
    case 4: 
      for (int x = 0; x < 3; x++)
        _game.addEnemy(e.new Shooter(width/6*(x+2), 100, _scale));
      break;
    case 5: 
      for (int x = 0; x < 2; x++)
        _game.addEnemy(e.new Spinner(width/5*(x+2), 50, _scale));
      break;
    case 6: 
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(width/8*(x+2), height/3, _scale));
      break;
    case 7: 
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(width/8*(x+2), height/3, _scale));
      break;
    case 8: 
      break;
    case 9: 
      break;
    }
  }

  //The game will be 3? minutes long
  //Each tick = 1 second
  //How do Matt 60, 120, 180
  public void process()
  {
    Enemy e = new Enemy();
    increase();

    if (_ticks > 10 && _ticks < 290) 
    {
      if (_ticks % 10 == 4)
        randomGenerator();
      else if (_ticks % 10 == 7)
        randomGenerator();
    }

    if (_ticks == 1)
    {
      _game.addEnemy(e.new Dud(width/5, 200));
      _game.addEnemy(e.new Dud(width/5*2, 200));
      _game.addEnemy(e.new Dud(width/5*3, 200));
      _game.addEnemy(e.new Dud(width/5*4, 200));
    } else if (_ticks == 10)
    {
      _game.addEnemy(e.new Charger(width/5, 50, _game));
      _game.addEnemy(e.new Charger(width/5*2, 50, _game));
      _game.addEnemy(e.new Charger(width/5*3, 50, _game));
      _game.addEnemy(e.new Charger(width/5*4, 50, _game));
      _game.addEnemy(e.new Boomerang(width/3, 100, _scale));
      _game.addEnemy(e.new Boomerang(width/3*2, 100, _scale));
    } else if (_ticks == 20)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(width/8*(x+2), 200, _scale));
    } else if (_ticks == 30)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(width/8*(x+2), 200, _scale));

      _game.addEnemy(e.new Waver(width/2, 200, _scale));
    } else if (_ticks == 40)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(width/8*(x+2), 200, _scale));
    } else if (_ticks == 50)
      randomGenerator();
    else if (_ticks == 60)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(width/8*(x+2), 200, _scale));

      _game.addEnemy(e.new Waver(width/2, 200, _scale));
    } else if (_ticks == 70)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(width/8*(x+2), 200, _scale));
    } else if (_ticks == 80)
      randomGenerator();
    else if (_ticks == 90)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(width/8*(x+2), 200, _scale));

      _game.addEnemy(e.new Waver(width/2, 200, _scale));
    } else if (_ticks == 100)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(width/8*(x+2), 200, _scale));
    } else if (_ticks == 110)
      randomGenerator();
    else if (_ticks == 120)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(width/8*(x+2), 200, _scale));

      _game.addEnemy(e.new Waver(width/2, 200, _scale));
    } else if (_ticks == 130)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(width/8*(x+2), 200, _scale));
    } else if (_ticks == 140)
      randomGenerator();
    else if (_ticks == 150)
    {
      for (int x = 0; x < 9; x++)
        _game.addEnemy(e.new Shooter(width/8*(x+2), 200, _scale));

      _game.addEnemy(e.new Waver(width/3, 150, _scale));
      _game.addEnemy(e.new Waver(width/3*2, 150, _scale));
    } else if (_ticks == 170)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Dud(width/8*(x+2), height/3));
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Dud(width/8*(x+2), height/3));
    } else if (_ticks == 175) { 
      _game.removeAll();
    } else if (_ticks == 180)
      _game.addEnemy(e.new Zamansky(_scale));

    if ( _game.getEnemies().size() == 0)
    {
      _startTime = millis() / 1000;
      _ticks = ( millis() / 1000) - _startTime;
      _scale += 0.5;
    }
  }
}

