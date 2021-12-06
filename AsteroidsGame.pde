Spaceship bob;
Star bobb[]=new Star[100];
public void setup() 
{
  for(int i=0; i<bobb.length; i++){
    bobb[i]=new Star();
  }
  size(400, 400);
  bob= new Spaceship();
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
