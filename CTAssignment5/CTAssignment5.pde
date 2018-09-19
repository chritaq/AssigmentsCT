PVector vPos, vVel; 

float acceleration = 1000;

float tpf;
long currentTime;
float time = 0;


void setup(){
  size(640, 480);
  
  vPos = new PVector(width/2, height/2);
  vVel = new PVector(500, 1000);
  frameRate(100);
}

void draw(){
  currentTime = millis();
  tpf = (currentTime - time) * 0.001f;
  
  background(255, 255, 255);
  ellipse(vPos.x, vPos.y, 10, 10);
  
  vPos.y = vPos.y + (vVel.y * tpf);
  vVel.y += (acceleration * tpf);
  vPos.x = vPos.x + (vVel.x * tpf);
  
  if(vPos.y > height) {
    vVel.y = -vVel.y;
    vVel.y = vVel.y * 0.7f;
    vPos.y = height - 1;
  }
  
  if(vPos.x > width || vPos.x < 0) {
    if (vPos.x > width) {
      vPos.x = 0 + 1; 
    }
  }
  
  time = currentTime;
  
}
