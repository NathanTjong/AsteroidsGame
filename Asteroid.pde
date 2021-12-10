class Asteroid extends Floater{
  private int rotSpeed;
  Asteroid(){
    rotSpeed=(int)(Math.random()*4+1);
    corners=6;
    xCorners= new int[] {-11, 7, 13,6, -11, -5};
    yCorners= new int[] {-8,-8, 0, 10, 8, 0};
    myXspeed=0.5;
    myYspeed=0.5;
    myColor=255;
    myPointDirection=PI;
    myCenterX=(int)(Math.random()*400);
    myCenterY=(int)(Math.random()*400);
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
