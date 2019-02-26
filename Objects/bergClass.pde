class Berg {
//variables
float circX;
float cicrY;

Berg () {
  
}
void circle(float x, float y, float size) {
  ellipseMode(RADIUS);
  ellipse(x, y, size*2, size*2);
}
void populateCircles (int a) {
  for (int i = 0; i < a; i++) {
    fill(0);
    circle(random(width), random(height), 2*i);
  }
}
}
