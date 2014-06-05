import java.awt.event.KeyEvent;

public class Player extends Unit implements KeyListener
{
    int xcor,ycor;
    int xmove,ymove;
    boolean space;
    int bomb;

    // Constructor
    public Player() {
	super(); 
	xcor = 0;
	ycor = 0;
	up = false;
	down = false;
	left = false;
	right = false;
	bomb = 3;
    }

    public void setX(int x){
	xcor = x;
    }

    public int getX(){
	return xcor;
    }

    public void setY(int y){
	ycor = y;

    }

    public int getY(){
	return ycor;
    }

    public void setCoordinate(int x, int y){
	xcor = x;
	ycor = y;
    }

    public int[] movement(){
	int[] answer = int[2];
	int[0] = xmove;
	int[1] = ymove;
	return answer;
    }

    public boolean getSpace(){
	return space;
    }

    public void keyPressed(KeyEvent event){
	Object src = event.getSource();
	//List of Keys
	//Up,Down,Left,Right,WASD?
	//Spacebar for pew pew

	if(event.getKeyCode() == KeyEvent.VK_UP){
	    ymove += 10;
	}

	else if (event.getKeyCode() == KeyEvent.VK_DOWN){
	    ymove -= 10;
	}

	else if (event.getKeyCode() == KeyEvent.VK_LEFT){
	    xmove -= 10;
	}

	else if (event.getKeyCode() == KeyEvent.VK_RIGHT){
	    ymove += 10;
	}

	else if (event.getKeyCode() == KeyEvent.VK_SPACE){
	    space = true;
	}

    }
       
    public void keyReleased(KeyEvent event){
	Object src = event.getSource();
	//List of Keys
	//None?

	if(event.getKeyCode() == KeyEvent.VK_UP){
	    ymove -= 10;
	}

	else if (event.getKeyCode() == KeyEvent.VK_DOWN){
	    ymove += 10;
	}

	else if (event.getKeyCode() == KeyEvent.VK_LEFT){
	    xmove += 10;
	}

	else if (event.getKeyCode() == KeyEvent.VK_RIGHT){
	    xmove -= 10;
	}

	else if (event.getKeyCode() == KeyEvent.VK_SPACE){
	    space = false;
	}

    }
    
    public void keyTyped(KeyEvent event){
	Object src = event.getSource();
	//List of Keys
	//B = bomb
	//P = pause - not in the player class
	//S = switch color (are we doing ikaruga?)
    }

    

}
