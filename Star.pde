class Star //note that this class does NOT extend Floater
{
  int x;
  int y;
  int size; 
  boolean check; 
  int opacity;
 public Star(){
  x = (int)(Math.random()*1000); 
  y =(int)(Math.random()*1000);
  size = (int)(Math.random()*11)+5; 
  opacity = 255; 
  check = true; 
 }
 
 public void show(){
 tint(opacity); 
 ellipse(x,y,size,size);
 
 } 
 
}
