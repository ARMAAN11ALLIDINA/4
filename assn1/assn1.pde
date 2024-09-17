int r=0;
int g=0;
int b=0;
void setup(){
  size(1920, 1080);
  background(255);
  eye();
}
void draw(){
  if(keyPressed==true){
    if(key=='s'){
      saveFrame("design_1.jpg");
    }
   else if(key=='l'){
     brush();
   }
   else if(key=='a'){
     brush2();
   }
   else if(key=='g'){
     brushg();
   }
  }
}
//simple brush that changes color
void brush(){
  if(mousePressed==true){
    noStroke();
    fill(int(random(255)),int(random(255)),int(random(255)));
    circle(mouseX, mouseY, 5);
  }
}
//creates a circle with a gradient, executes when it starts
void eye(){
  noStroke();
  for(int i=255; i>=0; i--){
    fill(r, g, b);
    circle(width/2, height/5, i);
    r++;
    b++;
  }
} 
//creates a triple brush using the rgb values, one of each at max
void brush2(){
  r=255;
  g=255;
  b=255;
  if(mousePressed==true){
    noStroke();
    fill(r, 0, 0);
    circle(mouseX+10, mouseY+10, 5);
    fill(0, g, 0);
    circle(mouseX, mouseY, 5);
    fill(0, 0, b);
    circle(mouseX-10, mouseY-10, 5);
  }
}
void brushg(){
  if(mousePressed==true){
    noStroke();
    fill(175);
    circle(mouseX, mouseY, 5);
  }
}
