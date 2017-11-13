
int ellipsewidth;
int ellipseheight; //declare
float x, y;
float xspeed,yspeed;
void setup() {
  ellipseheight = 50; //initialize
  ellipsewidth = 50;
 
  x = 300;
  y = 200;
  xspeed = 7;
  yspeed = 7;
  size(600, 400);
}


void draw() {
  //fill(0,25);
  //rect(0,0,width,height);
  // if x gets upto 600, then go back to 300

  background(0);

  

  x = x + xspeed;// x <- x + 5
  y += yspeed;//y = y + yspeed
  if( x > width || x < 0)  xspeed = -xspeed;
  //if( x < 0) xspeed = -xspeed;
  if( y > height || y < 0) yspeed *= -1.0; // yspeed = yspeed * -1;
  
  
  //y = y + 1;
  fill(255);
  ellipse(x, y, ellipsewidth, ellipseheight);
  //ellipse(x + 50,y + 50, ellipsewidth,ellipseheight);
}