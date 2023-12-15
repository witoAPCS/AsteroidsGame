public class Bullet extends Floater{
  public Bullet(Spaceship Baller){
   myCenterX = Baller.xGetter();
   myCenterY = Baller.yGetter(); 
   myPointDirection = Baller.directionGetter(); 
   double mySpeed = 10;
   double dRadians =myPointDirection*(Math.PI/180);  
   myXspeed = (mySpeed * Math.cos(dRadians));    
   myYspeed = (mySpeed * Math.sin(dRadians));
   myColor = color(102, 255, 255);
   
   corners = 4; 
   xCorners = new int[corners];
   xCorners[0] = 0;
   xCorners[1] = -10;
   xCorners[2] = 0; 
   xCorners[3] = 10;
  
   yCorners = new int[corners];
   yCorners[0] = 10;
   yCorners[1] = 0;
   yCorners[2] = -10;
   yCorners[3] = 0; 

}
    
public double yGetter(){
 return myCenterY;}

public double xGetter(){
 return myCenterX;
}
  
  
   public void move ()   //move the floater in the current direction of travel
  {  
    
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width)
    {     
     balls.remove(this); 
  }   
  
  
}


 

}
