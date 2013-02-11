// SUDDEN LOSS
// JD PIRTLE 2011
// This is the single machine (as opposed to a cluster) version
// of the original, which was exhibited in 2011  
// on the Jackson Goldwasser Catwalk Gallery at the Hyde Park Art Center
// original work: http://vimeo.com/28934221

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

  
  // cycle through different states every 45 secs
  
  if (millis() > 0 && millis() < 45000) {
  gold.single();
  }
  
  if (millis() > 45000 && millis() < 90000) {
  gold.deep();
  }
  
  if (millis() > 90000 && millis() < 135000) {
  gold.together();
  }
  
  if (millis() > 135000 && millis() < 180000) {
  gold.wave();
  }
  
  if (millis() > 180000 && millis() < 225000) {
  gold.moire();
  }
  
  
}

