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
 
 public void setX(int n){
  myCenterX = n;
  
 }
 
 public void setY(int n){
  myCenterY = n;
 }
 
 public void accelerateX(){
  myYspeed = 0; 
  myXspeed+=0.1;
 }
 public void deccelerateX(){
  myYspeed = 0; 
  myXspeed-=0.1; 
 }
 
 public void accelerateY(){
  myXspeed = 0; 
  myYspeed+=0.1;
 }
 public void deccelerateY(){
  myXspeed = 0;  
  myYspeed-=0.1; 
 }
 
 public void turnRight(){
  myPointDirection+=1;
   
 } 
 
 public void turnLeft(){
  myPointDirection-=1;
 }
 
}
