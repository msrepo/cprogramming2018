int diameter = 50;
float x,y;
float amplitude = 100,theta;
float damping = 0.99;
float endX,endY;
float angularVelocity,angularAcceleration;
void setup(){
  
  size(800,600);
  angularAcceleration = 0.03;
  angularVelocity = 0;
  x = 0; y  = 100 + diameter/2;
  endX =0; endY = 100;
  //frameRate(2);
}


void draw(){
  background(150);
  angularVelocity += angularAcceleration; 
  theta +=angularVelocity;
  angularVelocity *= damping;
  angularAcceleration = 0.01 * cos(theta) * damping;
  endX  = amplitude * cos(theta);
  endY = amplitude * sin(theta);
  x = (amplitude + diameter/2) * cos(theta);
  y = (amplitude + diameter/2) * sin(theta);
  translate(width/2,height/2);
  line(0,0,endX,endY);
  ellipse(x,y,diameter,diameter);
  
}