int nOfBalls = 10;
int maxSpeedX = 1000;
int minSpeedY = 50;
int maxSpeedY = 1000;

BouncyBall[] bB = new BouncyBall[nOfBalls];
PVector[] vPos = new PVector[nOfBalls];
PVector[] vVel = new PVector[nOfBalls];
PVector[] vColor = new PVector[nOfBalls];

void setup(){
  size(640, 480);

  frameRate(60);
  
  SetBallPosVelCol();
}

void draw(){
  background(255, 255, 255);
  
  for(int i = 0; i < nOfBalls; i++) {
    bB[i].UpdateBall();
  }
  
}

void SetBallPosVelCol() {
  for(int i = 0; i < nOfBalls; i++) {
    vPos[i] = new PVector(random(0, width), random(0, height));
    vVel[i] = new PVector(random(-maxSpeedX, maxSpeedX), random(100, maxSpeedY));
    vColor[i] = new PVector(random(0, 255), random(0, 255), random(0, 255));
    bB[i] = new BouncyBall(vPos[i], vVel[i], vColor[i]);
  }
}
