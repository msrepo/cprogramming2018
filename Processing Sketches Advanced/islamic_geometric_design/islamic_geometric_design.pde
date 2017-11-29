Polygon[][] p;
final int numOfPolygonInRow = 10;
void setup() {
  size(600, 600);

  p = new Polygon[numOfPolygonInRow][numOfPolygonInRow];
  for (int j = 0; j < numOfPolygonInRow; j++)
    for (int i=0; i < numOfPolygonInRow; i++) {
      p[j][i] = new Polygon();
      p[j][i].addVertex(0 + i * width/numOfPolygonInRow, 0 + j * width/numOfPolygonInRow);
      p[j][i].addVertex(width/numOfPolygonInRow + i * width/numOfPolygonInRow, 0 + j * width/numOfPolygonInRow);
      p[j][i].addVertex(width/numOfPolygonInRow + i * width/numOfPolygonInRow, width/numOfPolygonInRow + j * width/numOfPolygonInRow);
      p[j][i].addVertex(0 + i * width/numOfPolygonInRow, width/numOfPolygonInRow + j * width/numOfPolygonInRow);

      /* triangular tile */
      //p[j][i].addVertex(0 + i * width/numOfPolygonInRow, 0 + j * width/numOfPolygonInRow);
      //p[j][i].addVertex(width/numOfPolygonInRow + i * width/numOfPolygonInRow, 0 + j * width/numOfPolygonInRow);
      //p[j][i].addVertex(0 + i * width/numOfPolygonInRow, width/numOfPolygonInRow + j * width/numOfPolygonInRow);
    }
}

void draw() {
  background(150);
  float angle = map(mouseX, 0, width, 0, PI/2);
  for (int j = 0; j < numOfPolygonInRow; j++)
    for (int i = 0; i < numOfPolygonInRow; i++) {
      p[j][i].setAngle(angle); 
      p[j][i].show();
      p[j][i].hankin();
    }
}