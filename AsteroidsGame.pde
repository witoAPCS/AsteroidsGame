  //your variable declarations here

private ArrayList<Star> Stars = new ArrayList<Star>();
public Star star = new Star(); 

public Spaceship Baller; 

public void setup() 
{
  Baller = new Spaceship(); 
  noStroke(); 
 background(0);
  size(1000,1000); 
 for(int i = 0; i < 900; i++){
  Stars.add(new Star());
 }
}
public void draw() 
{
   background(0); 
  
 for(int i =0; i < Stars.size(); i++){
   Stars.get(i).transparency(); 
   Stars.get(i).show(); 
 
 }
 Baller.move(); 
 Baller.show(); 
}

public void keyPressed(){
  if(key == 'w' || key == 'W'){
   Baller.accelerate(1);
  }
  if(key == 's' || key == 'S'){
   Baller.accelerate(-1);
  }
  if(key == 'a' || key == 'A'){
   Baller.turn(-1);
  }
  if(key == 'd'|| key == 'D'){
   Baller.turn(1); 
  }
  if(key == 'h'|| key == 'H'){
   Baller.setX();
   Baller.setY(); 
  }

}
