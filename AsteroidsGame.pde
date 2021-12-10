Spaceship bob;
Star bobb[]=new Star[100];
ArrayList <Asteroid> bobbb = new ArrayList <Asteroid>();
//your variable declarations here
public void setup() 
{
  for(int i=0; i<bobb.length; i++){
    bobb[i]=new Star();
  }
  size(400, 400);
  bob= new Spaceship();
  for(int i=0; i<11; i++){
    bobbb.add(new Asteroid());
  }
}
public void draw() 
{
  fill(0);
  rect(-1, -1, 402, 402);
  for(int i=0; i<bobb.length; i++){
    bobb[i].show();
  }
  bob.show();
  bob.move();
  for(int i=0; i<bobbb.size(); i++){
    bobbb.get(i).move();
    bobbb.get(i).show();
    float distance= dist((float)(bob.getCenterX()), (float)(bob.getCenterY()), (float)(bobbb.get(i).getCenterX()), (float)(bobbb.get(i).getCenterX()));
    if(distance<10){
      bobbb.remove(i);
    }
  }
  
  
  //your code here
}

public void keyPressed(){
  if(key=='w'){
    bob.accelerate(0.5);
  }
  if(key=='s'){
    bob.accelerate(-0.5);
  }
  if(key=='q'){
    bob.turn(10);
  }
  if(key=='e'){
    bob.setX((int)(Math.random()*400));
    bob.setY((int)(Math.random()*400));  
  }
}
