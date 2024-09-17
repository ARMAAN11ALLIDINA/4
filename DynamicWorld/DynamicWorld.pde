//Armaan Allidina
//assignment 3 creation
//creates image based on code
float angleX;
float angleY;
Ball b1;
color c;
PImage a;
void setup(){
  size(1920, 1082, P3D);
  b1=new Ball(50, 0, 0, 255);
  a=loadImage("b.jpg");
}
void draw(){
  background(127.5);
  image(a,0,0);
  lights();
  sq();
  if(mousePressed==true){
    b1.displayBall();
  }
  sg();
  sr();
  sq2();
}
//creates square that takes its color from mouse location
void sq(){
  rectMode(CENTER);
  fill(mouseX%255, mouseY%255, (mouseX*mouseY)%255);
  noStroke();
  square(width/2, height/2, 200);
}
//creates a green sphere that rotates with mouse
void sg(){
  pushMatrix();
  angleX=map(mouseX, 0, width, -PI, PI);
  angleY=map(mouseY, 0, height, -PI, PI);
  translate(width/2+500, height/2, 0);
  rotateX(angleX);
  rotateY(angleY); 
  fill(0, 180, 0);
  stroke(0, 255, 0);
  sphere(200);
  popMatrix();
}
//creates a red sphere that rotates with mouse
void sr(){
  pushMatrix();
  angleX=map(mouseX, 0, width, -PI, PI);
  angleY=map(mouseY, 0, height, -PI, PI);
  translate(width/2-500, height/2, 0);
  rotateX(angleX);
  rotateY(angleY); 
  fill(180, 0, 0);
  stroke(255, 0, 0);
  sphere(200);
  popMatrix();
}
//creates square that takes its color from picture
void sq2(){
  rectMode(CENTER);
  c=get(mouseX,mouseY);
  fill(c);
  noStroke();
  square(width/2, height/2+400, 200);
}
