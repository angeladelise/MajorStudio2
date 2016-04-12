class Rat{
  float xPos;
  float yPos;
  PImage rat; 
  PImage rathealth;
  PImage ratBlue;
  PVector location; 

  
 //inital x and y position 
 Rat(float xPos, float yPos){
  this.xPos = xPos;
  this.yPos = yPos;
  
 location = new PVector(800,400); // initial position
   
   rat = loadImage("rat.png");
   rathealth = loadImage("rathealth.png");
   ratBlue = loadImage("ratBlue.png");
 }
  
  void draw(){
    //locationx and y to be at CENTER of image
  
   
    
    //if (immune == true){
    //image(rathealth, location.x-50, location.y-35, 92, 80);
    //}
    
    xPos = location.x;
    yPos = location.y;
    
  //EXTERNAL BOUNDARIES FOR RAT WITH SIZE ACCOUNTED FOR
  if (location.x > width -15)
   location.x = width -15;
  else if(location.x < 15)
   location.x = 15;
  if(location.y < 30)
   location.y = 30;
  else if(location.y > height -30)
   location.y = height -30;
  
  }
  
  void Control(){
     image(rat, location.x-15, location.y-30, 25, 67);
     
    if(keyPressed == true){
      if(key == CODED){
        if (keyCode == UP){
          location.y = location.y -5;
          yPos = yPos - 5;
          println("rat");
        }
        if (keyCode == DOWN){
          yPos = yPos + 5;
          location.y = location.y + 5;
        }
        if (keyCode == LEFT){
          location.x = location.x -5;
          xPos = xPos - 5;
        }
        if (keyCode == RIGHT){
          xPos = xPos + 5;
          location.x = location.x +5;
        }
      }
    } //end of keypressed
    
      //EXTERNAL BOUNDARIES FOR RAT WITH SIZE ACCOUNTED FOR
  if (location.x > width -15)
     location.x = width -15;
    else if(location.x < 15)
     location.x = 15;
    if(location.y < 30)
     location.y = 30;
    else if(location.y > height -30)
     location.y = height -30;
     
} //end of ratConrol
  
  
//NO CONTROL  
  void slowControl(){
   image(ratBlue, location.x-50, location.y-35, 92, 80);
       
    if(keyPressed == true){
      if(key == CODED){
        if (keyCode == UP){
          location.y = location.y -3;
          yPos = yPos - 3;
          println("rat");
        }
        if (keyCode == DOWN){
          yPos = yPos + 3;
          location.y = location.y + 3;
        }
        if (keyCode == LEFT){
          location.x = location.x -3;
          xPos = xPos - 3;
        }
        if (keyCode == RIGHT){
          xPos = xPos + 3;
          location.x = location.x +3;
        }
      }
    } //end of keypressed
    
 
      //EXTERNAL BOUNDARIES FOR RAT WITH SIZE ACCOUNTED FOR
    if (location.x > width -15)
     location.x = width -15;
    else if(location.x < 15)
     location.x = 15;
    if(location.y < 30)
     location.y = 30;
    else if(location.y > height -30)
     location.y = height -30;

  } // end of slowControl
  
  
  
//penalty for getting hit with parasite
  void noControl(){
    image(ratBlue, location.x-50, location.y-35, 92, 80);
    
     if(keyPressed == true){
      if(key == CODED){
        if (keyCode == UP){
          location.y = location.y;
        }
        if (keyCode == DOWN){
          location.y = location.y;
        }
        if (keyCode == LEFT){
          location.x = location.x;
        }
        if (keyCode == RIGHT){
          location.x = location.x;
        }
      }
    } //end of keypressed
    
  }

}