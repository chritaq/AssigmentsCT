CurveCreator a;
CurveCreator b;
//This is the curvecreator that is in our code.

void setup() {
  size(640, 480);
  a = new CurveCreator(500, 100, 300, 10, 0);
  //b = new CurveCreator(100, 100, 100, 100);
  //CurveCreator is the constructor in this case
  //Constructor is where the object is born.
}

void draw() {
  print ();
  background(120, 50, 50);

  //for (int i = 0; i < height; i++) { 
  //  if(i%3 == 0)
  //    stroke(0, 0, 0, 120);
  //  else
  //    stroke(120, 120, 120, 120);
      
  //  strokeWeight(2);
  //  line(0, i * 20, i * 20 + 20, height);
    
  //}
  a.CreateCurve();
  //b.CreateCurve();
}
