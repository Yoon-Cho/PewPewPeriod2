// Variables
Intro intro;

// Set FullScrene = On
boolean sketchFullScreen() {
  return true;
}


// Setup Method
void setup()
{
  size(displayWidth, displayHeight, P2D);
  intro = new Intro(displayWidth, displayHeight);
}

// Draw Method
void draw()
{
  intro.transition();
  
  if (mousePressed)
    exit();
}

