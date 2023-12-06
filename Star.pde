class Star //note that this class does NOT extend Floater
{
  private int x;
  private int y;
  private int size; 
  private boolean check; 
  private int opacity;
  private int Color; 
  private int opacityConstant;
 public Star(){
  x = (int)(Math.random()*1000); 
  y =(int)(Math.random()*1000);
  size = (int)(Math.random()*5)+6; 
  opacityConstant = opacity = (int)(Math.random()*255)+100;
  if(opacityConstant > 253){ opacityConstant = 253;
  opacity = 253;  
}
  check = true; 
  Color = color((int)(Math.random()*255)+100,(int)(Math.random()*255)+100,(int)(Math.random()*255)+100);
 }  
 
 public void transparency(){
   //System.out.print(opacity); 
   //System.out.print(check); 
    if(check == true){
     //for(int i = opacity; i >= 100; i--){
      opacity--;
      if(opacity <= opacityConstant) check = false; 
     //}
    }
    
    if(check == false){
     //for(int i = opacity; i <= 255; i++){
      opacity++; 
      if(opacity >= 253) check = true; 
     }
    //}
   
    
 }
 
 public void show(){ 
   noStroke(); 
 fill(Color,opacity); 
 ellipse(x,y,size,size);
 
 } 
 
}
