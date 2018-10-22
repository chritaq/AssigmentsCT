PVector vMouseCoordinates, vHunterCoordinates, vBouncerCoordinates;
PVector vBouncerSpeed;
float bouncerSpeed = 5;
float chaserSpeed = 6;

void setup()
{
  size(640, 480);
  strokeWeight(5); 
  vHunterCoordinates = new PVector (width/2, height/2);
  vBouncerCoordinates = new PVector (width/2, height/2);
  vBouncerSpeed = new PVector (bouncerSpeed, bouncerSpeed);
}

void draw() {
  background(0, 0, 250);
  
  vMouseCoordinates = new PVector(mouseX - vHunterCoordinates.x, mouseY - vHunterCoordinates.y);
  
  ellipse(vHunterCoordinates.x, vHunterCoordinates.y, 33, 33);
  ellipse(vBouncerCoordinates.x, vBouncerCoordinates.y, 33, 33);
  
  if(vBouncerCoordinates.x < 0 || vBouncerCoordinates.x > width) {
    vBouncerSpeed.x = vBouncerSpeed.x * -1;
  }
  if(vBouncerCoordinates.y < 0 || vBouncerCoordinates.y > height) {
    vBouncerSpeed.y = vBouncerSpeed.y * -1;
  }
  
  vMouseCoordinates.normalize();
  vMouseCoordinates.mult(chaserSpeed);
  vHunterCoordinates.add(vMouseCoordinates);
  
  vBouncerCoordinates.add(vBouncerSpeed);
}
