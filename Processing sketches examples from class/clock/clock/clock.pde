
int xend,yend,xendmin,yendmin;
float theta;
void setup(){
  
  size(600,600);
  background(150);
  xend = 100;
  yend = 0;
  frameRate(60);
}


void draw(){
  background(150);
  translate(width/2,height/2);
  
  line(0,0,xend,yend);
  line(0,0,xendmin,yendmin);
  theta  = theta +  TWO_PI/60;
  xendmin = int(100 * cos(theta/60));
  yendmin = int(100 * sin(theta / 60));
  xend = int(100 * cos(theta));
  yend = int(100 * sin(theta));
}