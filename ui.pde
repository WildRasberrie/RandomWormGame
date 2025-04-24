class UI {
  PVector pos;
  PFont redAlert;
  int score;
  
  UI (float x, float y){
    pos = new PVector (x,y);
    redAlert = loadFont ("C&CRedAlert[LAN]-48.vlw");
    score = 0;
  }
  void display(){
    textFont(redAlert);
    textSize(30);
    fill (0);
    rect (pos.x+95, pos.y-25, 20, 25);
    fill (#53C1DE);
    text ("SCORE:\t"+score,pos.x,pos.y);
  }  
  
}
