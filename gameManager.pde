class GameManager {
   String scene ="start";
  float x,y;
  GameManager (float x_, float y_){
    x=x_;
    y=y_;
  }
  
  void run(){
    update();
  }
  
  void update (){
    switch (scene){
      case "start":
        titleScreen();
        break;
      case "game":
        gameScreen();
        break;
      case "end":
        endScreen();
        break;
    }
    
  }
  void titleScreen (){
    background (0);
    textSize (120);
    textFont (ui.redAlert);
    fill (255);
    text ("WELCOME  TO  TATI'S \n  SUPER  FUN \n  FANTASTIC \n  WORM  GAME", 0,50);
    textSize (25);
    fill (255, lerp (255 % 150,0,0));
    text ("PRESS  SPACE  TO  START", 100,height-200);
    if  (keyPressed && key == ' '){
      background (0);
      scene = "game";
    }
  }
  
  void gameScreen (){
    background (0);
  for (int i = 0; i < collectibles.length; i ++) {
    collectibles[i].run();
  }
  for (int i=0; i<player.length; i++) {
    player[i].run();
  }
  ui.display();
  }
  
  void endScreen (){
    background (0);
    textSize (120);
    textMode(CENTER);
    textFont (ui.redAlert);
    fill (255);
    text ("Thanks for playing! :) \n\n\n SCORE: \t" + ui.score, 150,height/2);
 
    }
}
