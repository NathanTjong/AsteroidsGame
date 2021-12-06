class Star //note that this class does NOT extend Floater
{
  float starX, starY;
  int starRadius, starR, starG, starB;
  
  Star(){
  starX=(float)(Math.random()*400);
  starY=(float)(Math.random()*400);
  starRadius=(int)(Math.random()*15+1);
  starR=(int)(Math.random()*255);
  starG=(int)(Math.random()*255);
  starB=(int)(Math.random()*255);
  }
  public void show(){
    noStroke();
    fill(starR, starG, starB);
    ellipse(starX, starY, starRadius, starRadius);
  }
}
