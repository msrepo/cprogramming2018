/*
Author : Mahesh Shakya
Date: Nov 19,2017
Reference implementation of an analog clock
*/
int yendsecond, xendsecond;
int xendminute, yendminute;
int xendhour,yendhour;
float theta;
void setup() {

  size(600, 600);
  background(150);
  xendsecond= 100;
  yendsecond = 0;
  xendminute = 40;
  yendminute = 0;
  
  xendhour = 0;
  yendhour = -25;
  frameRate(1);
}


void draw() {
  background(150);
  translate(width/2, height/2);
  fill(color(#6F94F0));
  
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
  line(0,0,xendhour,yendhour);
  ellipse(0, 0, 10, 10);
  text("XII", -5, -100);
  text("VI", -5, 100);
  text("IX", -100, 0);
  text("III", 100, 0);
  theta += TWO_PI/60;
  xendsecond = int(100 * cos(theta));
  yendsecond = int(100 * sin(theta));
  xendminute = int(40 * cos(theta/60));
  yendminute = int(40 * sin(theta/60));
  xendhour = int(25 * cos(theta/60/60 - PI/2));
  yendhour = int(25 * sin(theta/60/60 - PI/2));
}