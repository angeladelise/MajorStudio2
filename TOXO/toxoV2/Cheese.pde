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
  
  void Control(){
  if(keyPressed == true){
      if(key == CODED){
        if (keyCode == UP){
          yPos = yPos -5;
          yPos = yPos - 5;
          println("rat");
        }
        if (keyCode == DOWN){
          yPos = yPos + 5;
          yPos = yPos + 5;
        }
        if (keyCode == LEFT){
          xPos = xPos -5;
          xPos = xPos - 5;
        }
        if (keyCode == RIGHT){
          xPos = xPos + 5;
          xPos = xPos +5;
        }
      }
    } //end of keypressed
  }
  
  //when you get cheese, it goes out of play
  void dead(){
    xPos = 1000;
    yPos = 5000;
  }

}