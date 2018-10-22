CharManager charManager;
int amountOfPlayers = 100;

void setup() {
  size(1080, 720);
  charManager = new CharManager(amountOfPlayers);
}

void draw() {
  background(0, 0, 0);
  charManager.update();
}
