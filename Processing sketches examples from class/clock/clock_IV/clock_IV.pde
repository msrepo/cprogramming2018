int yendsecond, xendsecond;
int xendminute, yendminute;
float theta;
void setup() {

  size(600, 600);
  background(150);
  xendsecond= 100;
  yendsecond = 0;
  xendminute = 40;
  yendminute = 0;
  frameRate(1);
  //translate(width/2,height/2);
}


void draw() {
  background(150);
  translate(width/2, height/2);
  fill(color(#B4A516));
  
  stroke(255);
  strokeWeight(20);
  ellipse(0, 0, 200, 200);
  fill(color(0));
  
  strokeWeight(1);
  stroke(color(255,0,0));
  line(0, 0, xendsecond, yendsecond);
  stroke(255);
  strokeWeight(3);
  line(0, 0, xendminute, yendminute);
  ellipse(0, 0, 10, 10);
  fill(color(#18DBB9));
  text("XII", -5, -100);
  text("VI", -5, 100);
  text("IX", -100, 0);
  text("III", 100, 0);
  theta += TWO_PI/60;
  xendsecond = int(100 * cos(theta));
  yendsecond = int(100 * sin(theta));
  xendminute = int(40 * cos(theta/60));
  yendminute = int(40 * sin(theta/60));
}