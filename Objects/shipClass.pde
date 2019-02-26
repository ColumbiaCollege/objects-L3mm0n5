class Ship {
  float xPos =0;
  float previousXpos =0;
  float yPos = 0;      
  PImage ship;
  PImage flip;
  boolean right = false;
  boolean left = false;
  boolean up = false;
  boolean down = false;
  boolean dir = false;

  Ship() {
    ship = loadImage("ship.png");
    flip = loadImage("flip.png");
    xPos = width/2;
    yPos = height/2;
    previousXpos = xPos;
  }
  void Move() {
    previousXpos =xPos;
    if (left) {
      xPos = xPos - 1;
    }
    if (right) {
      xPos++;
    }
    if (up) {
      yPos--;
    }
    if (down) {
      yPos++;
    }
    Wrap();
    if (xPos - previousXpos >0 && previousXpos!= 0)
      //ship went right, 
      dir = true;
    if (previousXpos - xPos >0 && previousXpos!= width)
      //ship went left
      dir = false;
  }
  void Wrap() {
    if (xPos < 0) {
      xPos = width;
    }
    if (xPos > width) {
      xPos = 0;
    }
    if (yPos < 0) {
      yPos = height;
    }
    if (yPos > height) {
      yPos = 0;
    }
  }
  void Display() {
    if (flipShip() == true) { 
      image(flip, xPos, yPos);
    } else {
      image(ship, xPos, yPos);
    }
  }
  void Resize() {
  }
  boolean flipShip() {
    if (dir) {
      return true;
    } else {
      return false;
    }
  }
}


//void setup(){
//circle(width/2,height/2,20);
//}
