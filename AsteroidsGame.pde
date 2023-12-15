  //your variable declarations here

private ArrayList<Star> Stars = new ArrayList<Star>();
public Star star = new Star(); 

public ArrayList<Asteroid> Asteroids = new ArrayList<Asteroid>();
public Asteroid AsteroidBase = new Asteroid(); 

public Spaceship Baller; 

public ArrayList<Bullet> balls = new ArrayList<Bullet>(); 

public void setup() 
{
  frameRate(240); 
  Baller = new Spaceship(); 
  noStroke(); 
 background(0);
  size(1000,1000); 
 for(int i = 0; i < 900; i++){
  Stars.add(new Star());
 }
  for(int i = 0; i < 10; i++){
  Asteroids.add(new Asteroid());
 }
}
public void draw() 
{
   background(0); 
 for(int i = 0; i < balls.size(); i++){

   
   for(int j = 0; j < Asteroids.size(); j++){
   if( Math.pow(balls.get(i).xGetter() - Asteroids.get(j).xGetter(), 2) + 
       Math.pow(balls.get(i).yGetter() - Asteroids.get(j).yGetter(), 2) 
   <= Math.pow(Asteroids.get(j).sizeGetter() * 5, 2)) Asteroids.remove(Asteroids.get(j));
   
   }
 }
  
  
 for(int i =0; i < Stars.size(); i++){
   Stars.get(i).transparency(); 
   Stars.get(i).show(); 
 
 }
 
 if(Asteroids.size() < 10){
  //for(int i = 0; i < 10; i++){
   Asteroids.add(new Asteroid()); 
  //}
 }
 
 for(int i = 0; i < Asteroids.size(); i++){
   Asteroids.get(i).show();
  Asteroids.get(i).move();
  
 }
 
 for(int i = 0; i < balls.size(); i++){
  balls.get(i).show();
  balls.get(i).move();
 }
 
 Baller.move(); 
 Baller.show(); 
}

public void keyPressed(){
  if(key == 'w' || key == 'W'){
   Baller.accelerate(0.1);
 
  }
  if(key == 's' || key == 'S'){
   Baller.accelerate(-0.1);
  }
  if(key == 'a' || key == 'A'){
   Baller.turn(-4);
  }
  if(key == 'd'|| key == 'D'){
   Baller.turn(4); 
  }
  if(key == 'h'|| key == 'H'){
   Baller.setX();
   Baller.setY(); 
   Baller.directionSetter(Math.random()*200);
  }
 if(key == ' '){
   balls.add(new Bullet(Baller));
   
 }



}
