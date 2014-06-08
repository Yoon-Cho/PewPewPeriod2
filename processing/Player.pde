public class Player extends Unit
{
  // Instance Variables

  private int xmove, ymove;          // Velocity (X, Y Components)
  private int[] coor;                // Path (Storage of X,Y)
  private int bomb;                  // # of Bombs           

  // Constructor
  public Player() {
    super();
    xcor = 500;
    ycor = 600;
    bomb = 3;
  }

  void moveCoordinate() {
    xcor += xmove;
    ycor += ymove;
  }

  void keyPressed() {
    switch(key) {
    case 'w': 
    case 'W':
      ymove += 10;
      break;
    case 's': 
    case 'S':
      ymove -= 10;
      break;
    case 'a': 
    case 'A':
      xmove -= 10;
      break;
    case 'd': 
    case 'D':
      xmove += 10;
      break;
    }

    switch(keyCode) {
    case UP:
      ymove += 10;
      break;
    case DOWN:
      ymove -= 10;
      break;
    case LEFT:
      xmove -= 10;
      break;
    case RIGHT:
      xmove += 10;
      break;
    }
  }

  void keyReleased() {
    switch(key) {
    case 'w': 
    case 'W':
      ymove -= 10;
      break;
    case 's': 
    case 'S':
      ymove += 10;
      break;
    case 'a': 
    case 'A':
      xmove += 10;
      break;
    case 'd': 
    case 'D':
      xmove -= 10;
      break;
    }

    switch(keyCode) {
    case UP:
      ymove -= 10;
      break;
    case DOWN:
      ymove += 10;
      break;
    case LEFT:
      xmove += 10;
      break;
    case RIGHT:
      xmove -= 10;
      break;
    }
  }

  void keyTyped(KeyEvent event) {
    //List of Keys
    //B = bomb
    //P = pause - not in the player class
    //S = switch color (are we doing ikaruga?)
  }
}

