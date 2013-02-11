//SUDDEN LOSS
//JD PIRTLE 2011

import processing.opengl.*;
Golden gold;

void setup() {
  size(1000, 600, OPENGL);
  gold = new Golden();
  noStroke();
}

void draw() {
  


  background(0);
  float z = 0.0001;
  for (int v = 1; v < 100; v++) {
    z += 0.1;
  }

  directionalLight(51, 51, 51, z, -0.50, 0);
  directionalLight(151, 151, 151, 1, z, 0);
  directionalLight(151, 151, 151, 1, 0, z);
  directionalLight(51, 51, 51, -0.7, z, 0);
  directionalLight(151, 151, 151, z, 0.750, 0);
  directionalLight(151, 151, 151, 0, 1, -z);

  
  gold.single();

  
  
}

