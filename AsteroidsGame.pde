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
  if(key == 's'){
   Baller.accelerateY();
  }
  if(key == 'd'){
   Baller.accelerateX();
  }
  if(key == 'w'){
   Baller.deccelerateY();
  }
  if(key == 'a'){
   Baller.deccelerateX();
  }
  if(key == 'q'){
    Baller.turnLeft(); 
  }
  if(key == 'e'){
    Baller.turnRight();
  }
}
