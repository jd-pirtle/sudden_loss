class Golden {

  float mover = 1.0;
  float moveMod = 0.0;
  float alphaMod = 15;

  Golden() {
  }

  //golden wave-------------------------+

  void wave() {

    if (alphaMod<255) {
      alphaMod+=0.1;
    }

    if (moveMod <= 3.0) {
      moveMod = moveMod+0.00001;
    }
    else {
      moveMod = moveMod-0.00001;
    }

    mover = (mover + moveMod) % width;

    fill(200, 98, 8, alphaMod);

    for (int y= 5; y < height; y += 30) {
        for (int x= 5; x < width; x += 30) {
          pushMatrix();
          translate(x, y, -100);
          //rotateX(radians((x+5)*(sin(radians(mover)))*0.25));
          rotateY(radians((y+5)*(sin(radians(mover)))*0.25));
          box(20);
          popMatrix();
        }
      }
    }
    
  //blue close wave-------------------------+

  void moire() {

    if (alphaMod<255) {
      alphaMod+=0.1;
    }

    if (moveMod <= 3.0) {
      moveMod = moveMod+0.00001;
    }
    else {
      moveMod = moveMod-0.00001;
    }

    fill(0, 177, 169, alphaMod);
    mover = (mover + moveMod) % height;

    for (int y= 5; y < height; y += 20) {
      for (int x= 5; x < width; x += 20) {

        pushMatrix();
        translate(x, y, -100);
        rotateX(radians((x+5)*(sin(radians(mover)))*0.25));
        rotateY(radians((y+5)*(sin(radians(mover)))*0.25));
        box(20);
        popMatrix();
      }
    }
  }

  //all wave-------------------------+

  void together() {

    if (alphaMod<255) {
      alphaMod+=0.1;
    }

    if (moveMod <= 3.0) {
      moveMod = moveMod+0.001;
    }
    else {
      moveMod = moveMod-0.001;
    }

    mover = (mover + moveMod) % width;

    fill(255, 243, 234, alphaMod);

    for (int y=5; y<height; y+=25) {
      for (int x=5; x<width; x+=25) {

        pushMatrix();
        translate(x, y, -100);
        rotateX(cos(radians(mover))*0.25);
        rotateY(sin(radians(mover))*0.25);
        box(20);
        popMatrix();
      }
    }
  }


  //recursive wave-------------------------+


  void single() {

    if (alphaMod<200) {
      alphaMod+=0.01;
    }

    if (moveMod <= 0.1) {
      moveMod = moveMod+0.000001;
    }
    else {
      moveMod = moveMod-0.000001;
    }

    mover = (mover + moveMod);
    if (mover == width) {
      mover = (mover - moveMod);
    }

    fill(255, 243, 234, alphaMod);


    for (int x=10; x<400; x+=10) {

      pushMatrix();
      translate(width/2, height/2, 100);
      rotateX(cos(radians(mover*x*0.025)));
      rotateY(sin(radians(mover*x*0.025)));
      box(x);
      popMatrix();
    }
  }
  
  //deep wave-------------------------+

  void deep() {

    if (alphaMod<255) {
      alphaMod+=0.1;
    }

    if (moveMod <= 3.0) {
      moveMod = moveMod+0.00001;
    }
    else {
      moveMod = moveMod-0.00001;
    }

    mover = (mover + moveMod) % width;

    fill(200, 8, 8, alphaMod);

    for (int y= 50; y < height; y += 100) {
        for (int x= 50; x < width; x += 100) {
          for (int z = -100; z > -500; z -= 100) {

          pushMatrix();
          translate(x, y, z);
          rotateX(radians((x+5)*(sin(radians(mover)))*0.25));
          rotateY(radians((y+5)*(sin(radians(mover)))*0.25));
          box(75);
          popMatrix();
        }
      }
    }
  }
}
