class BouncyBall{
  PVector vPos, vVel, vColor;
  float acceleration = 1000;
  
  float tpf;
  long currentTime;
  float time = 0;  

  BouncyBall(PVector Pos, PVector Vel, PVector Color) {
      vPos = Pos;
      vVel = Vel;
      vColor = Color;
    }
  
  void UpdateBall() {
    CountFrames();
    
    stroke(vColor.x, vColor.y, vColor.z);
    fill(vColor.x, vColor.y, vColor.z);
    ellipse(vPos.x, vPos.y, 10, 10);
    
    BallPosition();
    
    time = currentTime;
  }
  
  void CountFrames() {
    currentTime = millis();
    tpf = (currentTime - time) * 0.001f; 
  }
  
  void BallPosition() {
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
      else{
        vPos.x = width - 1;
      }
  
    }
  }
  
}
