
Player[] player;
Collectibles[] collectibles;
UI ui;
GameManager gameManager;

float randomColor;
int collected = 10;
void setup () {
  size (666, 666);
  ui = new UI (50, 50);
  gameManager = new GameManager(width, height);

  player = new Player [1];
  player[0] = new Player (0, 0, 50);

  collectibles = new Collectibles[collected];

  for (int i = 0; i < collectibles.length; i ++) {
    collectibles[i] = new Collectibles (random (width), random(height), 50);
  }
}
void draw () {
  gameManager.run();
}

void keyPressed() {
  for (int i=0; i<player.length; i++) {
    if (key== 'w' || key == 'W' || key == CODED && keyCode == UP) {
      player[i].up = true;
    }

    if (key== 'a' || key == 'A' || key == CODED && keyCode == LEFT) {
      player[i].left = true;
    }

    if (key== 's' || key == 'S' || key == CODED && keyCode == DOWN) {
      player[i].down = true;
    }

    if (key== 'd' || key == 'D' || key == CODED && keyCode == RIGHT) {
      player[i].right = true;
    }
  }
}

void keyReleased() {
  for (int i=0; i<player.length; i++) {
    if (key != 'w' || key != 'W' || key != CODED && keyCode != UP) {
      player[i].up = false;
    }

    if (key!= 'a' || key != 'A' || key != CODED && keyCode != LEFT) {
      player[i].left = false;
    }

    if (key != 's' || key != 'S' || key != CODED && keyCode != DOWN) {
      player[i].down = false;
    }

    if (key!= 'd' || key != 'D' || key != CODED && keyCode != RIGHT) {
      player[i].right = false;
    }
  }
}
