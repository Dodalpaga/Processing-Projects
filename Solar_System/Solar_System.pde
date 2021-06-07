// Example 14-16: Simple solar system

// Angle of rotation around sun and planets
float theta = 0;

void setup() {
  size(1920, 1080);
}

void draw() {
  background(0);
  noStroke();

  // Translate to center of window.
  translate(width/2, height/2);
  
  // Sun
  pushMatrix();
  rotate(theta);
  translate(4, 0);
  fill(255, 200, 50);
  ellipse(0,0, 60, 60);
  popMatrix();
  

  // Mercury rotates around the sun
  pushMatrix();
  rotate(theta/0.24);
  translate(40*2, 0);
  fill(219, 68, 68);
  ellipse(0, 0, 2, 2);
  popMatrix();
  
  // Venus rotates around the sun
  pushMatrix();
  rotate(-theta/0.61);
  translate(70*2, 0);
  fill(238, 184, 92);
  ellipse(0, 0, 3, 3);
  popMatrix();
  
  // Earth rotates around the sun
  pushMatrix();
  rotate(theta);
  translate(100*2, 0);
  fill(50, 200, 255);
  ellipse(0, 0, 5, 5);

  // Moon #1 rotates around the earth
  // pushMatrix() is called to save the transformation state before drawing moon #1. 
  // This way we can pop and return to earth before drawing moon #2. 
  // Both moons rotate around the earth (which itself is rotating around the sun).
  pushMatrix(); 
  rotate(-theta*4);
  translate(7, 0);
  fill(255, 255, 255);
  ellipse(0, 0, 2, 2);
  popMatrix();
  popMatrix();
  
  // Mars around the Sun
  pushMatrix();
  rotate(theta/1.8);
  translate(160*2, 0);
  fill(205, 88, 88);
  ellipse(0, 0, 3, 3);
  popMatrix();
  
  // Jupiter
  pushMatrix();
  rotate(theta/11.8);
  translate(280*2, 0);
  fill(213, 188, 136);
  ellipse(0, 0, 16, 16);
  popMatrix();
  
  // Saturne
  pushMatrix();
  rotate(theta/29.5);
  translate(400*2, 0);
  fill(205, 165, 84);
  ellipse(0, 0, 10, 10);
  popMatrix();
  
  // Anneaux
  pushMatrix();
  rotate(theta/29.5);
  translate(400*2, 0);
  noFill();
  stroke(255);
  strokeWeight(2);
  ellipse(0, 0, 18, 20);
  popMatrix();
    
  //Uranus
  pushMatrix();
  rotate(theta/84);
  translate(1960*2, 0);
  fill(136, 180, 213);
  ellipse(0, 0, 5, 5);
  popMatrix();
  
  //Neptune
  pushMatrix();
  rotate(theta/164);
  translate(3880*2, 0);
  fill(53, 118, 168);
  ellipse(0, 0, 1, 1);
  popMatrix();
  
  theta += 0.02;
}
