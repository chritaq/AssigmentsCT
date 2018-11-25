class Human {
  PVector position;
  PVector velocity;
  float size;
  PVector colour;
  
  Human() {
    position = new PVector();
    position.x = random(width);
    position.y = random(height);

    velocity = new PVector();
    velocity.x = random(10) - 5;
    velocity.y = random(10) - 5;
    
    //velocity = 0 fix.
    while(velocity.x == 0 && velocity.y == 0) { 
      velocity.x = random(10) - 5;
      velocity.y = random(10) - 5; 
    }
    
    colour = new PVector();
    colour.x = random(100, 255);
    colour.y = 100;
    colour.z = random(100, 255);
    
    size = random(15, 25);
  }
  
  void update() {
    position.x += velocity.x;
    position.y += velocity.y;
    
    screenEdgeWarp();
    
  }
  
  void draw() {
    fill(colour.x, colour.y, colour.z);
    stroke(0, 0, 0);
    ellipse(position.x, position.y, size, size);
  }
  
  void screenEdgeWarp() {
    if(position.x > width) {
      position.x = 0 + 1;
    }
    if(position.x < 0) {
      position.x = width - 1;
    }
    
    if(position.y > height) {
      position.y = 0 + 1;
    }
    if(position.y < 0) {
      position.y = height - 1;
    }
  }
  
  PVector getPos() {
    return position;
  }
  
  float getSize() {
    return size;
  }
  
}
