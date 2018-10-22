int startx = 0;
int starty = 0;
float degreesx = 0;
float degreesy = 0;
float radius = 55;


void setup()
{
  size(640, 480);
  strokeWeight(5);
  startx = width/2;
  starty = height/2;
}



void draw()
{
  background(255);
  SplitCircle(8);
}

void SplitCircle(float split) {
  for(float i = 0; i < split; i++) {
    point(startx, starty);
    
    //Middle stroke
    stroke(250, 0, 0, 250);
    
    //Points around circle
    degreesx = 6.28/split * (i + 1);
    degreesy = 6.28/split * (i + 1);
    point((startx + radius * cos(degreesx)), (starty + radius * sin(degreesy)));
  }
}
