class Cheese{
  float xPos;
  float yPos;
  PImage cheese;
  
  Cheese(float xPos, float yPos){
    this.xPos = xPos;
    this.yPos = yPos;

    cheese = loadImage("cheese.png");
    
  }

  void draw(){
    image(cheese, xPos-25, yPos-25, 50,50);
    //ellipse(xPos - 25, yPos -25, 50, 50);
  }

}