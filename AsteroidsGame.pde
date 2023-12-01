  //your variable declarations here

ArrayList<Star> Stars = new ArrayList<Star>();
Star star = new Star(); 

public void setup() 
{
  noStroke(); 
 background(0);
  size(1000,1000); 
 for(int i = 0; i < 200; i++){
  Stars.add(new Star());
 }
}
public void draw() 
{
 for(int i =0; i < Stars.size(); i++){
   Stars.get(i).show(); 
 
 }
}
