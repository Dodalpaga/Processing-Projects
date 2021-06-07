class Astre {
  float radius;
  float angle;
  float distance;
  Astre[] planets;
  
  Astre (float r,float d){
   radius = r;
   distance = d;
   angle = 0;
  }
  
  void show(){
    fill(255);
    ellipse(0,0,radius*2,radius*2);
  }
  
  
}
