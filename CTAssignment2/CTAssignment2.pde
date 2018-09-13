CurveCreator a;

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
  a.CreateCurve();
}
