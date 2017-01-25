PImage pic;



void setup()


{
  size(640,480,P3D);
  pic  = loadImage("909245.jpg");
  smooth(10);
}
 
void draw()
{
  
  background(0);
  
  
  beginCamera();
  fill(random(0,255),random(0,255), 0);
    
  translate(width/2,height/2);
  float xNorm = map(mouseX,0,width,0,100),
        yNorm = map(mouseY,0,height,0,100);
  camera(120.0,120.0,120.0,50.0,50.0,0.0,0.0,1.0,0.0);
  
  lightSpecular(255,255,255);
  ambientLight(10.0,0,99);
  shininess(100);
  specular(255,0,0);
  emissive(100);
  lightSpecular(255,0,0);
  directionalLight(255,255,204,-1*xNorm,-1*yNorm,1);
  //pointLight(51,102,126,100,100,map(mouseX,0,width,0,100));
 
    

  
  sphere(50);
   rotate(mouseY);
  translate(0,66);
  box(20);
  translate(0,68); //<>//
  box(20);
  translate(0,69);
  box(20);
  endCamera();
   beginCamera();
    image(pic,0,0);
  endCamera();
  
}