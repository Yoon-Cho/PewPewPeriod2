import java.util.*;
import javax.swing.*;
import java.awt.*;
import java.awt.BorderLayout;
import java.awt.event.*;

public class Main extends JFrame{

    public Main(){
	setTitle("Pew Pew");
	setLayout(new FlowLayout());
	setResizable(false);
	setDefaultCloseOperation(EXIT_ON_CLOSE);
	setSize(1000,750);
	setBackground(Color.RED);
	Instructions start = new Instructions();
	this.add(BorderLayout.CENTER, start);
    }

    class Instructions extends JPanel{
	protected Image bg = new ImageIcon("IBackground.jpg").getImage();
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

	}
    }

    class Game extends JPanel{}
    class Death extends JPanel{
	protected JFrame frame;
	protected Image bg = new ImageIcon("DBackground.jpg").getImage();
    }

    

}
