import ddf.minim.*;

// Variables
Intro _intro;
Menu _menu;
Game _game;

int _state = 5;

// FullScreen = On
boolean sketchFullScreen() { return true; }

// Setup Method
void setup()
{
  size(displayWidth, displayHeight, P2D);
  background(0);
  
  _intro = new Intro(width, height);
  _menu = new Menu(width, height);
  _game = new Game();
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
            else
            {
              _state++;
            }
            break;
    case 2: if ( _menu.fadeIn() );
            else { _state++; }
            break;
    case 3: _menu.display();
            switch( _menu.selected() )
            {
              case 0: _state++;
                      break;
            }
            break;
    case 4: if ( _menu.fadeOut() );
            else { _state++; }
            break;
    case 5: _game.play();
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


