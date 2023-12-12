class Spaceship extends Floater  
{ 
  private int size; 


 
 
 public Spaceship(){
 size = 4; 
 corners = 6; 
 xCorners = new int[corners];
 yCorners = new int[corners];
  xCorners[0] = -5*size; 
  xCorners[1]=-3*size;
  xCorners[2]= -5*size;
  xCorners[3] = -3*size;
  xCorners[4] = -5*size;
  xCorners[5] = 5*size;
  yCorners[0] = -5*size;
  yCorners[1] = -2*size;
  yCorners[2] = 0*size; 
  yCorners[3] = 2*size;
  yCorners[4] = 5*size;
  yCorners[5] = 0*size; 
  myColor = 255;
  myCenterX = 500;
  myCenterY = 500;

  
  myXspeed =0;
  myYspeed =0; 
  
 myPointDirection =0; 
 }
      
 public void setX(){
  myXspeed=0;
   myCenterX += Math.random()*400 -200;
  
 }
 
 public void setY(){
   myYspeed = 0;  
   myCenterY += Math.random()*400 -200;
 }
 public double speedGetter(){
  return myXspeed + myYspeed; 
}
 public double speedGetterY(){
  return myYspeed; 
}

 public double speedGetterX(){
  return myXspeed; 
}

public double xGetter(){
 return myCenterX;
}
 
public double yGetter(){
 return myCenterY;
} 
 
public double directionGetter(){
 return myPointDirection;  
}


}
