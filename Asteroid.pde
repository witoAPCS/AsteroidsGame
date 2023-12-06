public class Asteroid extends Floater{
  private int size = (int)(Math.random()*5)+5; 
  public Asteroid(){
   corners = 8;
   xCorners = new int[]{-7,-7,1,7,8,6,2,-4}; 
   yCorners = new int[]{0,5,7,3,0,-5,-6,-6};
  for(int i = 0; i < xCorners.length; i++){
 
    xCorners[i] = xCorners[i]*size;
  
  yCorners[i] = yCorners[i]*size; 
  }
  myCenterX = Math.random()*1000; 
  myCenterY = Math.random()*1000; 
  myColor = 255; 
  myXspeed = Math.random()*5-2;
  myYspeed = Math.random()*5-2;
  myPointDirection = Math.random() * 5; 
}
    public void move ()   //move the floater in the current direction of travel
  {      
    super.move();myPointDirection++;
   if ( Math.pow(myCenterX - Baller.xGetter(),2) + 
        Math.pow(myCenterY - Baller.yGetter(),2) 
   <= Math.pow(size + 12, 2)) Asteroids.remove(this);
   
   }
  } 
