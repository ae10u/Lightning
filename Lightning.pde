int startX=150;
int startY=0;
int endX=150;
int endY=0;
float strokeWeight= 4.0;

void setup()
{
  size(300, 300);
  frameRate(36);
}
void draw()
{
  ellipse(75,0,200,100);
  ellipse(225,0,200,100);
  ellipse(150,25,200,100);
  ellipse(40,15,200,100);
  ellipse(260,15,200,100);
  
  fill(53, 57, 53, 10);
  rect(0, 0, 300, 300);
  stroke(255, 230, 0);
  strokeWeight(strokeWeight);
  endX = startX + (int)(Math.random()*40) - 20;
  endY = startY + (int)(Math.random()*35);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  if (strokeWeight > 1)
  {
    strokeWeight = strokeWeight - 0.25;
  }
}
void mousePressed()
{
  int random = (int)(Math.random()*2);
  if (random==1) {
    frameRate(40);
  } else {
    frameRate(65);
  }
  startX = (int)(Math.random()*100+75);
  endX = startX;
  startY = 0;
  endY = 0;
  strokeWeight = (int)(Math.random()*5+1);
  background(220, 220, 200);
}
