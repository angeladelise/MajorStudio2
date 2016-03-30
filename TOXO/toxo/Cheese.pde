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
    
    //BOUNDARIES
    if (xPos > width -15)
     xPos = width -15;
    else if(xPos < 15)
     xPos = 15;
    if(yPos < 30)
     yPos = 30;
    else if(yPos > height -30)
     yPos = height -30;
    
  }

}