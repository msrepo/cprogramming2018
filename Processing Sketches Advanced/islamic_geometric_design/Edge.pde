
class Edge{
   PVector a,b;
   
   Edge(float xa_,float ya_, float xb_, float yb_){
     a.x = xa_; a.y = ya_; b.x = xb_; b.y = yb_;
   }
   
   void show(){
    beginShape() ;
    vertex(a.x,a.y);
    vertex(b.x,b.y);
    endShape();
    
   }
  
}