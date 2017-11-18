int diameter = 50;
float x,y;
float amplitude = 100,theta;
float endX,endY;
void setup(){
  
  size(800,600);
  
  x = 0; y  = 100 + diameter/2;
  endX =0; endY = 100;
  frameRate(2);
}


void draw(){
  //background(150);
  theta +=0.05;
  endX  = amplitude * cos(theta);
  endY = amplitude * sin(theta);
  x = (amplitude + diameter/2) * cos(theta);
  y = (amplitude + diameter/2) * sin(theta);
  translate(width/2,height/2);
  line(0,0,endX,endY);
  ellipse(x,y,diameter,diameter);
  
}