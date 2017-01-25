
color Color = color(255);
float positionX = 30;
float positionY = 30;
int advance = 1,
    frameThreshold = 5,
    dviz = 0,
    dviz1=0,
    d=60;
    
void setup()
{
           size(640,480);
           frameRate(1000);
           smooth(4);
           background(0,0,0);
           
}
void draw()
{
 
           frameRate(1000); //WHY
           smooth(4);
           background(0);
           
           ellipseMode(CENTER);
           fill(Color);
            noStroke();
          
          ellipse(positionX, positionY, d, d);
 
 
 
  if (frameCount % frameThreshold == 0) 
  background(0,random(0,255),random(0,255)); // %)
  
   {
        if ((dviz == 0) & (positionX <(width - d/2) )) 
    positionX += advance;
    
    else 
    {
    dviz = 1;
    positionX -= advance;
        if (positionX<d/2) dviz=0;
    
    }
   
    if ((dviz1 == 0) & (positionY <(height-d/2) )) 
    positionY += advance;
    
    else 
    {
    dviz1 = 1;
    positionY -= advance;
         if (positionY<d/2) dviz1=0;
            
     
    
    
    
    }
   
   }
}