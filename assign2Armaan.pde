//Armaan Alldina
//assignment 2 creation
//creates composition based on the code
int totalFrameNumber=66;
int cf;
PImage[] a=new PImage[totalFrameNumber];
float x=30;
float y=60;
float r=20;
int directionX=1;
int directionY=1;
int red=0;
int blue=0;
void setup(){
  size(1920, 1080);
  frameRate(12);
  for(int i=0; i<a.length; i++){
    String frameName="frame_" + nf(i, 2)+".png";
    a[i]=loadImage(frameName);
  }
}
void draw(){
  noStroke();
  bg();
  eye();
  if(keyPressed==true){
    if(key!='s'){
      b();
      if(mousePressed==true){
        d();
      }
    }
    if(key=='s'){
      saveFrame("###.jpg");
    }
  }
  g();
  c();
  f();
  if(mousePressed==true){
    a();
  } 
}
//creates back out of 2 rectangle foe the enirety of the width and half the height with semi transparency, blue and red respectivaly, non-interactive 
void bg(){
  fill(0, 0, 255, 50);
  rect(0, 0, width,height/2); 
  fill(255, 0, 0, 50);
  rect(0, height/2, width,height/2); 
}
//plays animation I created and brokedown for the sake of this assingment, non-interactive
void f(){
  pushMatrix();
  scale(.5);
  cf=frameCount%totalFrameNumber;
  image(a[cf], 0, 0);
  popMatrix();
}
//creates a green circle at mouse location, interactive
void a(){
  fill(0, 200, 0);
  circle(mouseX, mouseY, 25);
}
//switches backgorund to yellow and cyan on input, interactive
void b(){
  fill(255, 255, 0);
  rect(0, 0, width,height/2); 
  fill(0, 255, 255);
  rect(0, height/2, width,height/2); 
}
//creates a white circle that moves, non-interactive
void c(){
  fill(255);
  circle(x, y, r);
  x+=20*directionX;
  if(x>=width||x<=0){
    directionX*=-1;
  }
  y+=10*directionY;
  if(y>=height||y<=0){
    directionY*=-1;
  }
}
//plays animation on mouse click near loction of mouse with changed background, interactive
void d(){
  pushMatrix();
  scale(.5);
  cf=frameCount%totalFrameNumber;
  image(a[cf], mouseX+50, mouseY+25);
  popMatrix();
}
//creates a circle with a gradient from black to magenta and vice-versa, non-interactive
void eye(){
  noStroke();
  for(int i=255; i>=0; i--){
    fill(red, 0, blue);
    circle(width/2, height/5, i);
    red++;
    blue++;
    if(red==255&&blue==255){
      red=0;
      blue=0;
    }
  }
} 
//creates a rectangle that changes colour based on mouse location at fixed place, interactive
void g(){
  fill(mouseX%255, mouseY%255, (mouseX*mouseY)%255);
  rect(0, height/2, 200, 100);
}
