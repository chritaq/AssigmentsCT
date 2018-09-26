class CharManager {
  Human[] humans;
  int numberOfHumans;
  int humansLeft;
  
  long currentTime;
  boolean getTime = true;
  
  CharManager(int amountHumans) {
    humans = new Human[amountHumans]; //Skapar enbart Human-platser i humans-arrayen.
    numberOfHumans = amountHumans;
    humansLeft = numberOfHumans - 1;
    
    for(int i = 0; i < numberOfHumans; i++) { 
      if(i < numberOfHumans - 1) {
        humans[i] = new Human(); //Skapar själva objekten. //Du behöver enbart byta denna till Zombie för att få en zombie.  
      }
      if (i == numberOfHumans - 1) {
        humans[i] = new Zombie();
      }
  }
  }
  
  void update() {
    updateCharacters();
    checkForBite();
    checkForGameOver();
    
  }
  
  void updateCharacters() {
    for (int i = 0; i < numberOfHumans; i++) {
      humans[i].update();
      humans[i].draw();
    }
    
  }
  
  void checkForBite() {
    for(int i = 0; i < numberOfHumans; i++) {
        for(int j = i + 1; j < numberOfHumans; j++) {
            float size1 = humans[i].getSize();
            float size2 = humans[j].getSize();
            
            PVector pos1 = humans[i].getPos();
            PVector pos2 = humans[j].getPos();
            
            boolean collided = checkCollision(pos1, size1, pos2, size2);
            
            if              (collided && 
                            (humans[i] instanceof Zombie) != true && 
                            humans[j] instanceof Zombie) 
            {
              humans[i] = new Zombie(pos1, size1);
              humansLeft -= 1;
            }
            
            else if          (collided && 
                             (humans[j] instanceof Zombie) != true && 
                             humans[i] instanceof Zombie) 
            {
              humans[j] = new Zombie(pos2, size2);
              humansLeft -= 1;
            }
            
        }  
      }
  }
  
  void checkForGameOver() {
    textSize(32);
    stroke(0, 0, 0);
    fill(255, 255, 255);
    textAlign(LEFT);
    text(humansLeft + " Humans Left", 10, 30); 
    if(humansLeft == 0) {
        if(getTime) {
          currentTime = millis() / 1000;  
          getTime = false;
        }

        textSize(64);
        textAlign(CENTER, CENTER);
        text("Game Over", width/2, height/2); 
        textSize(32);
        textAlign(CENTER, CENTER);
        text("Time: " + currentTime + " seconds", width/2, height/2 + height/10); 
    }
  }
  
  
  boolean checkCollision(PVector pos1, float size1, PVector pos2, float size2) {
    float maxDistance = size1 + size2;
    
    if(abs(pos1.x - pos2.x) > maxDistance || abs(pos1.y - pos2.y) > maxDistance) {
      return false;
    }
    
    else if(dist(pos1.x, pos1.y, pos2.x, pos2.y) > maxDistance) {
      return false;
    }
    
    else {
      return true;
    }

  }
}
