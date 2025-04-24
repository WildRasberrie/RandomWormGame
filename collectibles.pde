class Collectibles {
  float size, random, offset = 25, i = 0;
  boolean colliding = false, increasing = false;
  PVector pos;

  Collectibles (float x_, float y_, float size_) {
    pos = new PVector(x_, y_);
    size = size_;
  }
  void run () {
    display();
    update();
  }
  void display() {
    for (int i = 0; i<1; i ++) {
      fill (player[i].random[2]);
    }
    circle (pos.x, pos.y, size); 
  }
  void update() {
    for (int i=0; i<player.length; i++) {
      if (keyPressed && dist (player[i].pos.x+size+player[i].expansion, player[i].pos.y, pos.x-5, pos.y+10) < 20 ) {
        colliding = true;
      } else colliding = false;
      if (colliding) {
        player[i].expansion+= 50;
        ui.score++;
        pos=new PVector (-5000, 5000); 
      }
      if (ui.score >= collected){
        gameManager. scene = "end";
      }
    }
  }
}
