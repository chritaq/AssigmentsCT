class CurveCreator {
  //A class is what it means to be a "curvecreator".
  
  int position;
  int axis1;
  int axis2;
  int numberOfLines;
  int rotation;
  
  CurveCreator(int temp1, int temp2, int temp3, int temp4, int temp5) {
    position = temp1;
    //Vart den ska börja
    
    axis1 = temp2;
    //Vart punktne längst ned åt vänster ska hamna
    
    axis2 = temp3;
    //Vart punkten längst ned åt höger ska hamna
    
    numberOfLines = 2;
    //Antalet linjer
    
    rotation = temp5;
    //Vilken rotation den har
  }
  
  void CreateCurve() {
    for (int i = 0; i < numberOfLines; i++) { 
      
      if(i%3 == 0)
        stroke(0, 0, 0, 120);
      else
        stroke(120, 120, 120, 120);
        
      strokeWeight(2);
      
      if(rotation == 0) {
        line(position, axis1 + i * 20, position + i * 20 + 20, axis2);
        if (i == 0) {
          numberOfLines = (axis2 - (axis1 + i * 20))/20;
        }
          
      }
      else if(rotation == 1)
        line(position, axis1 + i * 20, position - i * 20 - 20, axis2);
    

  }
  
}

}
