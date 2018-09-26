class Zombie extends Human {
  PVector direction;
  
  Zombie() {
    super();
    velocity = new PVector();
    velocity.x = random(2) - 1;
    velocity.y = random(2) - 1;
    
    //Velocity == (0, 0) fix
    while(velocity.x == 0 && velocity.y == 0) {
      velocity.x = random(2) - 1;
      velocity.y = random(2) - 1;
    }

    direction = new PVector(velocity.x, velocity.y);

  }
  
  Zombie(PVector pos, float sizeChange) {
    position = pos;

    velocity = new PVector();
    velocity.x = random(2) - 1;
    velocity.y = random(2) - 1;
    
    direction = new PVector(velocity.x, velocity.y);
    
    size = sizeChange;
  }
  
  void draw() {
    fill(0, 255, 0);
    ellipse(position.x, position.y, size, size);
    
    //Arms, in progress
    direction.normalize();
    direction.mult(size);
    stroke(0, 255, 0);
    line          (position.x, 
                  position.y, 
                  position.x + direction.x, 
                  position.y + direction.y);
  }
  
  }
