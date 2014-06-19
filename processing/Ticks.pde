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
  public int getTicks() { return _ticks; }
  public int getScale() { return _scale; }

  // Increase Ticks Method
  private void increase() { _ticks = ( millis() / 1000 ) - _startTime; }

  // Random Generator Method
  private void randomGenerator()
  {
    int choice = int( random(10) );
    Enemy e = new Enemy();
    
    switch( choice )
    {
      case 0: for (int x = 0; x < 5; x++)
                _game.addEnemy(e.new Dud(100*x+200, 300));
              break;
      case 1: for (int x = 0; x < 5; x++)
                _game.addEnemy(e.new Dud(100*x+200, 300));
              break;
      case 2: for (int x = 0; x < 5; x++)
                _game.addEnemy(e.new Charger(100*x+200, 300, _game));
              break;
      case 3: for (int x = 0; x < 4; x++)
                _game.addEnemy(e.new Boomerang(150*x+175, 300, _scale));
              break;
      case 4: for (int x = 0; x < 3; x++)
                _game.addEnemy(e.new Shooter(200*x+200, 100, _scale));
              break;
      case 5: for (int x = 0; x < 2; x++)
                _game.addEnemy(e.new Spinner(200*x+300, 50, _scale));
              break;
      case 6: for (int x = 0; x < 5; x++)
                _game.addEnemy(e.new Shooter(100*x+200, 300, _scale));
              break;
      case 7: for (int x = 0; x < 5; x++)
                _game.addEnemy(e.new Shooter(100*x+200, 100, _scale));
              break;
      case 8: for (int x = 0; x < 5; x++)
                _game.addEnemy(e.new Charger(100*x+200, 300, _game));
              for (int x = 0; x < 2; x++)
                _game.addEnemy(e.new Spinner(200*x+300, 50, _scale));
              break;
      case 9: _game.addEnemy(e.new Waver(400, 200, _scale));
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
      if (_ticks % 10 == 3)
        randomGenerator();
      else if (_ticks % 10 == 6)
        randomGenerator();
      else if (_ticks % 10 == 9)
        randomGenerator();
    }
    
    if (_ticks == 1)
    {
      _game.addEnemy(e.new Dud(210, 200));
      _game.addEnemy(e.new Dud(590, 200));
      _game.addEnemy(e.new Dud(310, 200));
      _game.addEnemy(e.new Dud(490, 200));
      _game.addEnemy(e.new Dud(410, 200));
      _game.addEnemy(e.new Dud(390, 200));
      _game.addEnemy(e.new Dud(510, 200));
      _game.addEnemy(e.new Dud(290, 200));
      _game.addEnemy(e.new Dud(610, 200));
      _game.addEnemy(e.new Dud(190, 200));
    }
    else if (_ticks == 10)
    {
      _game.addEnemy(e.new Charger(160, 50, _game));
      _game.addEnemy(e.new Charger(320, 50, _game));
      _game.addEnemy(e.new Charger(480, 50, _game));
      _game.addEnemy(e.new Charger(640, 50, _game));
      _game.addEnemy(e.new Boomerang(300, 100, _scale));
      _game.addEnemy(e.new Boomerang(500, 100, _scale));
    }
    else if (_ticks == 20)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(100*x+200, 100, _scale));
    }
    else if (_ticks == 30)
    {
        for (int x = 0; x < 5; x++)
          _game.addEnemy(e.new Shooter(100*x+200, 100, _scale));
          
        _game.addEnemy(e.new Waver(400, 200, _scale));
    }
    else if (_ticks == 40)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(100*x+200, 100, _scale));
    }
    else if (_ticks == 50)
      randomGenerator();
    else if (_ticks == 60)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(100*x+200, 100, _scale));
      
      _game.addEnemy(e.new Waver(400, 200, _scale));
    }
    else if (_ticks == 70)
    {
      for (int x = 0; x < 5; x++)
          _game.addEnemy(e.new Shooter(100*x+200, 100, _scale));
    }
    else if (_ticks == 80)
      randomGenerator();
    else if (_ticks == 90)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(100*x+200, 100, _scale));
      
      _game.addEnemy(e.new Waver(400, 200, _scale));
    }
    else if (_ticks == 100)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(100*x+200, 100, _scale));
    }
    else if (_ticks == 110)
      randomGenerator();
    else if (_ticks == 120)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(100*x+200, 100, _scale));
      
      _game.addEnemy(e.new Waver(400, 200, _scale));
    }
    else if (_ticks == 130)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Shooter(100*x+200, 100, _scale));
    }
    else if (_ticks == 140)
      randomGenerator();
    else if (_ticks == 150)
    {
      for (int x = 0; x < 9; x++)
        _game.addEnemy(e.new Shooter(50*x+200, 100, _scale));
      
      _game.addEnemy(e.new Waver(300, 150, _scale));
      _game.addEnemy(e.new Waver(500, 150, _scale));
    }
    else if (_ticks == 170)
    {
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Dud(100*x+200, 300));
      for (int x = 0; x < 5; x++)
        _game.addEnemy(e.new Dud(100*x+200, 200));
    }
    //else if (_ticks == 175)
    else if (_ticks == 180)
      _game.addEnemy(e.new Zamansky(_scale));

    if ( _game.getEnemies().size() == 0)
    {
      _startTime = millis() / 1000;
      _ticks = ( millis() / 1000 ) - _startTime;
      _scale += 0.5;
    }
  }
}
