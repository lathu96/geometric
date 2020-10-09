int radius;
int numPoints;
int p;

void setup()
{
  size(500, 500);
  radius    = 100;
  numPoints = 10;
}

void draw()
{

  background(0);
  stroke(255, 0, 0);
  strokeWeight(2);
  noFill();
  
 
 float t = frameCount/30.0;
 
  beginShape();
  for (int p=0; p<numPoints; p=p+1)
  {
    vertex(width/2  + radius*cos(t*p/numPoints + t), 
      height/2 + radius*sin(t*p/numPoints + t));
  }
  endShape(CLOSE);
}
