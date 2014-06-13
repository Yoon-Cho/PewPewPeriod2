public class Player extends Unit
{
  // Instance Variables

  private int xmove, ymove;          // Velocity (X, Y Components)
  private int[] coor;                // Path (Storage of X,Y)
  private int bomb;                  // # of Bombs           
  private boolean space;
  private int level;

  // Constructor
  public Player() {
    super();
    xcor = 500;
    ycor = 600;
    bomb = 3;
    space = false;
    level = 1;
  }

  void moveCoordinate() {
    xcor += xmove;
    ycor += ymove;
  }

  void shoot() {
    if (space = true) {
      MyShots.add(new Projectile(xcor, ycor, isWhite, level));
    }
  }

  void explode(){
   bomb--;
   for (unit: enemies)
    enemies.remove(unit);
   for (shot: EnemyShots)
    EnemyShots.remove(shot);
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
    case ' ':
      space = false;
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
    switch(key) {
    case 'q':
    case 'Q':
      swap();
      break;
    case ' ':
      space = true;
      break;
    }
  }
}

