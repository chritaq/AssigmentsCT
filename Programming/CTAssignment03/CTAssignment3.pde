float angle = 0;
int frame = 0;

void setup()
{
  size(640, 480);
  strokeWeight(5);

}

void draw()
{
  background(255);
  for(float i = 0; i < 100; i++) {
    
    //
    stroke(250, 0, 0, 250);
    point(150 + angle * 50, 240 + sin(-angle + frame * 0.0004) * 50);
    stroke(0, 0, 250, 250);
    //point(150 + angle * 50, 240 - cos(angle - frame * 0.0004) * 50);
    angle += TWO_PI/100;
    frame++;
    
    //DNA Lines
    //if(i%9 == 0) {
    //  stroke(-sin(angle) * 250/2 + 250/2, 0, sin(angle) * 250/2 + 250/2, 250);
    //  line (150 + angle * 50, 240 + sin(-angle + frame * 0.0004) * 50, 150 + angle * 50, 240 - cos(angle - frame * 0.0004) * 50);
    //}
    
    if(i == 99)
      angle = 0;
  }
  


}
