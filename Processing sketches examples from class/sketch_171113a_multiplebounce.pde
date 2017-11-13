float x[], y[];
float xspeed[], yspeed[];
int i;
int ellipseheight;
int ellipsewidth;
void setup() {

  size(600, 400);

  ellipseheight = 50;
  ellipsewidth = 50;
  x = new float[10];
  y = new float[10];
  xspeed = new float[10];
  yspeed = new float[10];
  

  
  //for(i = 1 ;i <=100  ; i++ ) println("Hello" + i);
  
  
  for (i=0; i<10; i++) {
    x[i] = random(width);
    y[i] = random(height);
    xspeed[i] = random(-5, 5);
    yspeed[i] = random(-5, 5);
  }
  noStroke();
  background(0);
}


void draw() {
  fill(0, 10);
  rect(0, 0, width, height);

  for (i = 0; i<10; i++) {
    xspeed[i] += random(-5, 5);
    xspeed[i] *=0.66;
    yspeed[i] += random(-5, 5);
    yspeed[i] *=0.66;
    if (x[i]  > width) xspeed[i] = -xspeed[i];
    if (y[i]  > height) yspeed[i] = -yspeed[i];
    if (x[i]  < 0 && xspeed[i] < 0) xspeed[i] = -xspeed[i];
    if (y[i]  < 0 && yspeed[i] < 0) yspeed[i] = -yspeed[i];


    x[i]+=xspeed[i];
    y[i]+=yspeed[i];

    //x *=0.95;
    //y *=0.95;

    fill(255);
    ellipse(x[i], y[i], ellipsewidth, ellipseheight);
  }
}