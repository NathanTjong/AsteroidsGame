class Spaceship extends Floater  
{   
  Spaceship(){
    corners=3;
    xCorners= new int[] {-8, 16, -8};
    yCorners= new int[] {-8, 0, 8};
    myColor=255;
    myCenterX=200;
    myCenterY=200;
    myXspeed=0;
    myYspeed=0;
    myPointDirection=0;
  }
  //your code here
  public void setYspeed(double y){
    myYspeed=y;
  }
  public void setXspeed(double x){
    myXspeed=x;
  }
  public void setX(double x){
    myCenterX=x;
  }
  public void setY(double y){
    myCenterY=y;
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
