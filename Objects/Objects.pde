//Ship Movement - Caleb

//variables for position
//float xPos =0;
//float yPos = 0;

////Booleans for movement
//boolean right = false;
//boolean left = false;
//boolean up = false;
//boolean down = false;

////Boolean for flipping ship direction
//boolean drawShip = true;

//
//PImage ship;
//PImage flip;

Ship boat;
Berg [] bergs;

void setup() {
  //window modifications
  size(800, 500);
  background(233, 255, 255);

  imageMode(CENTER);

  //initial position
  //xPos = width/2;
  //yPos = height/2;

  //shape properties
  fill(0, 0, 255);

  //ship = loadImage("ship.png");
  //flip = loadImage("flip.png");

  boat = new Ship();
  //bergs = new Berg;
}

void draw() {
  //wipe
  //populateCircles(20);
  background(233, 255, 255);
  boat.Display();
  boat.Move();
 
}

//void populateCircles() {
// populateCircles(20); 
//}
void keyPressed() {

  //if arrow keys are pressed, the (object) will move accordingly
  if (keyCode == LEFT) {
    boat.left = true;
  }
  if (keyCode == RIGHT) {
    boat.right = true;
  }
  if (keyCode == UP) {
    boat.up = true;
  }
  if (keyCode == DOWN) {
    boat.down = true;
  }
}
void keyReleased() {

  //if the arrow keys aren't pressed the (object) will stop moving
  if (keyCode == LEFT) {
    boat.left = false;
  }
  if (keyCode == RIGHT) {
    boat.right = false;
  }
  if (keyCode == UP) {
    boat.up = false;
  }
  if (keyCode == DOWN) {
    boat.down = false;
  }
}
