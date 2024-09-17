//creates circle at mouses location, moves with the mouse
class Ball{
  float r;
  float red;
  Float g;
  float b;
  Ball(float radius, float re, float green, float blue){ 
    r=radius;
    red=re;
    g=green;
    b=blue;
  } 
  //shows and controls circle
  void displayBall(){
    noStroke();
    ellipseMode(RADIUS);
    fill(red, g, b);
    circle(mouseX, mouseY, r);
  }
}
