import java.util.*;
import javax.swing.*;
import java.awt.*;
import java.awt.BorderLayout;
import java.awt.event.*;

public class Main extends JFrame{

    protected Container master;
    protected JPanel start;

    public Main(){
	setTitle("Pew Pew");
	setLayout(new FlowLayout());
	setResizable(false);
	setDefaultCloseOperation(EXIT_ON_CLOSE);
	setSize(1000,750);
	
	master = new JPanel();
	master = this.getContentPane();
	master.setBackground(Color.RED);


	start = new Introduction();
	//master.add(BorderLayout.CENTER, start);
    }

    class Introduction extends JPanel{
	//protected Image bg = new ImageIcon("Intro.jpg").getImage();
    }

    class Instructions extends JPanel{
	protected Image bg = new ImageIcon("Background.jpg").getImage();
	protected JButton secrets,start;
	protected JTextArea instructions;
	protected Font font;

	public Instructions(){
	    font = new Font("Times New Roman", Font.BOLD, 20);
	    this.setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
	    this.setPreferredSize(new Dimension(1000,750));
	    secrets = new JButton("Instructions");
	    start = new JButton("Start The Game!");

	    secrets.setFont(font);
	    secrets.setSize(new Dimension(100,100));
	    //secrets.addActionListener(this);
	    secrets.setAlignmentX(Component.CENTER_ALIGNMENT);

	    start.setFont(font);
	    start.setSize(new Dimension(100,100));
	    //start.addActionListener(this);
	    start.setAlignmentX(Component.CENTER_ALIGNMENT);

	    instructions = new JTextArea();
	    instructions.setText("These are instructions");

	    this.add(Box.createRigidArea(new Dimension(0,50)));
	    this.add(secrets);
	    this.add(Box.createRigidArea(new Dimension(0,50)));
	    this.add(instructions);
	    this.add(Box.createRigidArea(new Dimension(0,50)));
	    this.add(start);
	    repaint();

	}

	public void paintComponent(Graphics g){
	    super.paintComponent(g);
	    g.drawImage(bg, 0, 0, getWidth(), getHeight(), this);
	}

    }

    class Game extends JPanel{
	//I HAVE NO IDEA
    }

    class Death extends JPanel{
	protected JFrame frame;
	protected Image bg = new ImageIcon("Death.jpg").getImage();

	public void paintComponent(Graphics g){
	    super.paintComponent(g);
	    g.drawImage(bg, 0, 0, getWidth(), getHeight(), this);
	}
    }

    class Victory extends JPanel{
	protected Image bg = new ImageIcon("Victory.jpg").getImage();
	
	public void paintComponent(Graphics g){
	    super.paintComponent(g);
	    g.drawImage(bg, 0, 0, getWidth(), getHeight(), this);
	}
    }

    

}
