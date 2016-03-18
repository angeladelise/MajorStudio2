class Parasite{
  float xPos;
  float yPos;
  PImage parasite; 
  
 Parasite(float xPos, float yPos){
  this.xPos = xPos;
  this.yPos = yPos;
   
   parasite = loadImage("parasite.png");
 }
  
  void draw(){
    image(parasite, xPos, yPos, 50, 60);

    yPos = yPos + 5;
    
  //EXTERNAL BOUNDARIES FOR PARA1
  if (xPos > width){
   xPos = width;
 }
  else if(xPos < 0){
   xPos = 0;
  }
  if(yPos < 0){
   yPos = 0;
  }
  else if(yPos > height){
   yPos = height;
  }
  
}

  void left(){
  
  }
  
  void right(){
  
  
  }
}