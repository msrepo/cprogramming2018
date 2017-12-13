
int xend,yend;
float theta;
void setup(){
  
  size(600,600);
  background(150);
  xend = 100;
  yend = 0;
  frameRate(1);
}


void draw(){
  background(150);
  translate(width/2,height/2);
  line(0,0,xend,yend);
  ellipse(0,0,10,10);
  text("XII",0,-100);
  text("VI",0,100);
  text("IX",-100,0);
  text("III",100,0);
  theta += TWO_PI/60;
  xend = int(100 * cos(theta));
  yend = int(100 * sin(theta));
}