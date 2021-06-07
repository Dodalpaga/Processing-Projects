Astre sun;


void setup(){
  size(600, 600);
  sun = new Astre(100,100);
}

void draw(){
  background(0);
  translate(width/2, height/2);
  sun.show();
}
