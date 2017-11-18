float rodX, rodY;
float damping =1;
int diameter = 50;
float ellipseX, ellipseY;
float theta;
int amplitude = 100;
float angularVelocity, angularAcceleration;
float aVel;
void setup() {
  rodX = 0; 
  rodY = amplitude;
  ellipseX = 0;
  ellipseY = rodY+diameter/2;
  theta = 0;
  angularVelocity =0;
  aVel = 0.03;
  size(800, 600);
  background(150);
  //frameRate(2);
}

void draw() {
  background(150);
  angularAcceleration  = -0.01 * sin(theta-PI/2) ;
  angularVelocity +=angularAcceleration;
  //angularVelocity *=damping;
  theta +=angularVelocity;
  theta +=aVel;
  if(theta >= PI || theta <= 0) aVel = -aVel;
  rodX =  amplitude *cos(theta); 
  rodY =  amplitude *sin(theta) ;
  ellipseX = (amplitude + diameter/2)*cos(theta);
  ellipseY = (amplitude + diameter/2)*sin(theta);
  translate(width/2, height/2);
  line(0, 0, rodX, rodY);
  ellipse(ellipseX, ellipseY, diameter, diameter);
}