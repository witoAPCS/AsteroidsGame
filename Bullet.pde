public class Bullet extends Floater{
  public Bullet(Spaceship Baller){
   myCenterX = Baller.xGetter();
   myCenterY = Baller.yGetter(); 
   myPointDirection = Baller.directionGetter(); 
   myXspeed = Baller.speedGetterX();
   myYspeed = Baller.speedGetterY();
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
  
  
  
  
}
