class Rat{
  float xPos;
  float yPos;
  PImage rat; 
  
 Rat(float xPos, float yPos){
  this.xPos = xPos;
  this.yPos = yPos;
   
   rat = loadImage("rat.png");
 }
  
  void draw(){
    image(rat, xPos, yPos, 50, 60);

    yPos = yPos + 5;
   
   
  }

}