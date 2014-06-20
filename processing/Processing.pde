import ddf.minim.*;

// Variables
Intro _intro;
Menu _menu;
Game _game;

int _state;

Minim _minim;
AudioPlayer _player;

// Setup Method
void setup()
{
  size(800,1000, P2D);
  background(0);
  
  _intro = new Intro(width, height);
  _menu = new Menu(width, height);
  _game = new Game();
  
  _minim = new Minim(this);
}

// Draw Method
void draw()
{
  switch(_state)
  {
    case 0: if ( _intro.fadeIn() );
            else { _state++; }
            break;
    case 1: if ( _intro.fadeOut() );
            else { _state++; }
            break;
    case 2: if ( _menu.fadeIn() );
            else
            {
              _state++;
              
              _player = _minim.loadFile("menu_theme.mp3");
              _player.loop();
            }
            break;
    case 3: _menu.display();
            switch( _menu.selected() )
            {
              case 0: _state++;
                      break;
            }
            break;
    case 4: if ( _menu.fadeOut() );
            else
            {
              noTint();
              
              _state++;
              
              _player.pause();
              //_player = _minim.loadFile("");
              //_player.play();
              //_player.loop();
            }
            break;
    case 5: if ( _game.play() );
            else { _state++; }
            break;
    case 6: if ( _game.end() );
            else { _state++; }
            break;
    default: if (mousePressed) {exit();}
             break;
  }
}

// Keyboard Input
void keyPressed()
{
  _game.keyPressed();
}


