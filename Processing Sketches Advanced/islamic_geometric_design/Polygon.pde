class Polygon { //<>//
  final int VMAX = 10;
  float angle;
  PVector[] vertices;
  int vsize, esize;
  Polygon() {
    vsize = esize = 0;
    vertices = new PVector[VMAX];
  }
  
  void setAngle(float angle_){
    angle = angle_;
  }

  void addVertex(int x, int y) {
    PVector v = new PVector(x, y);
    if ( vsize < VMAX) {
      vertices[vsize++] = v;
    }
  }

  void show() {
    beginShape();
    for (int i = 0; i < vsize; i++) 
      vertex(vertices[i].x, vertices[i].y);
    endShape(CLOSE);
  }

  void hankin() {
    for (int i = 0; i <vsize; i++) {
      PVector mid = PVector.add(vertices[(i+1) % vsize], vertices[i]);
      mid = mid.mult(0.5);      
      pushMatrix();
      PVector h1 = PVector.sub(vertices[i], mid);
      float h1mag = h1.mag();
      translate(mid.x, mid.y);
      rotate(TWO_PI * i / vsize);
      line(0, 0, h1mag * cos(angle), h1mag * sin(angle));
      line(0, 0, h1mag * cos(PI -angle), h1mag * sin(PI - angle));
      popMatrix();
    }
  }
}