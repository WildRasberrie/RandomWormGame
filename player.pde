class Player {
  PVector pos, vel;
  float x, y, size, speed,expansion;
  boolean left, right, up, down;
  color[] random = {#FC0303, #5903FC, #03FC5C, #E7FC03};


  Player (float x_, float y_, float size_) {
    pos = new PVector (x_, y_);
    vel = new PVector(2, 0);
    size=size_;
    expansion = 0; 
  }

  void run() {
    display();
    update();
  }

  void display() {
    fill (random[1]);
    rect (pos.x, pos.y,size + expansion, size);
  }

  void update () {
    playerControls ();
    pos.add(vel);
  }


  void playerControls () {
    if (up == true) {

       vel = new PVector (0,-2); ;
    }
    if (left == true) {

      vel = new PVector(-2,0);
    }
    if (down == true) {

      vel = new PVector(0,2);
    }
    if (right == true) {

      vel = new PVector(2,0);
    }
  }
} 
