class Parasite{
  float xPos;
  float yPos;
  PImage parasite;
  PVector location;
  
  //inital x and y position
 Parasite(float xPos, float yPos){
  this.xPos = xPos;
  this.yPos = yPos;
  
  location = new PVector(xPos,yPos); // initial position

   parasite = loadImage("parasite.png");
 }
  
  void draw(){
    
     xPos = location.x;
     yPos = location.y;
     
     
     //locationx and y to be at CENTER of image

    image(parasite, location.x -25, location.y -30, 50, 60);    
    

   
  
  } // end of draw
  
  void Control(){
    
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
  
  void noControl(){
    
    location.x = location.x +2;
    //location.y = location.y +2;
    
   //EXTERNAL BOUNDARIES FOR RAT WITH SIZE ACCOUNTED FOR
    if (location.x > width -15)
     location.x = width -15;
    else if(location.x < 15)
     location.x = 15;
    if(location.y < 30)
     location.y = 30;
    else if(location.y > height -30)
     location.y = height -30;

  } // end of noControl
  
  
  void dead(){
    location.x = 1000;
    location.y = 1000;
  
   location.x = location.x +2;
   location.y = location.y +2;
  }

}