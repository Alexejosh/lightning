int startX = 0;
int startY = 300;
int endX = 95;
int endY = 155;
void setup()
{
  size(600,300);
  background(0);
}
void draw()
{
  background(0);
  box(400, 0);
  
  strokeWeight(11);
  stroke((int)(Math.random()*151) + 00, (int)(Math.random()*161) + 10, (int)(Math.random()*171));
  if (mouseX>=400&&mouseX<=405)
  {
    stroke(255,255,255);
  }
    
  if (mousePressed == true)
  {
    while(endX < mouseX)
    {
      endX = startX + (int)(Math.random()*9);
      if(startX >= mouseX) 
      {
      endY = startY + (int)(Math.random()*9) - 9;
      }
      else if(startX < mouseX) 
      {
        if(startY > mouseY) 
        {
          if(Math.random() < .8)
          {  
            endY = startY + (int)(Math.random()*9) - 9;
          }
          else
          {
            endY = startY + (int)(Math.random()*9);
          }
        }
        else if(startY < mouseY) 
        {
          if (Math.random() < .8)
          {
            endY = startY + (int)(Math.random()*9);
          }
          else
          {
            endY = startY + (int)(Math.random()*9) - 9;
          }
        }
        else 
        {
          endY = startY + (int)(Math.random()*19) - 9;
        }
      }
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    startX = 0;
    startY = 300;
    endX = 95 ;
    endY = startY;
  }
}
void box(int x,int y)
{
  stroke(5);
  strokeWeight(1);
  fill(255);
  rect(x,y, 5, 300);
  
  
  
}