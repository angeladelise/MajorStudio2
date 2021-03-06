class Rat{
  float xPos;
  float yPos;
  PImage rat; 
  PImage rathealth;
  PImage ratBlue;
  PImage ratInfected;
  PVector location; 

  PImage upArrow;
  PImage downArrow;
  PImage leftArrow;
  PImage rightArrow;
  
 //inital x and y position 
 Rat(float xPos, float yPos){
  this.xPos = xPos;
  this.yPos = yPos;
  
 location = new PVector(400,200); // initial position
   
   rat = loadImage("rat.png");
   rathealth = loadImage("rathealth.png");
   ratBlue = loadImage("ratBlue.png");
   ratInfected = loadImage("ratInfected.png");
   
   upArrow = loadImage("up_arrow.png");
   downArrow = loadImage("down_arrow.png");
   leftArrow = loadImage("left_arrow.png");
   rightArrow = loadImage("right_arrow.png");
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
          image(upArrow, 200, -10, 600,400);
        }
        if (keyCode == DOWN){
          yPos = yPos + 5;
          location.y = location.y + 5;
          image(downArrow, 200, -10, 600,400);
        }
        if (keyCode == LEFT){
          location.x = location.x -5;
          xPos = xPos - 5;
          image(leftArrow, 200, -10, 600,400);
        }
        if (keyCode == RIGHT){
          xPos = xPos + 5;
          location.x = location.x +5;
          image(rightArrow, 200, -10, 600,400);
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
          image(upArrow, 200, -10, 600,400);
        }
        if (keyCode == DOWN){
          yPos = yPos + 3;
          location.y = location.y + 3;
          image(downArrow, 200, -10, 600,400);
        }
        if (keyCode == LEFT){
          location.x = location.x -3;
          xPos = xPos - 3;
          image(leftArrow, 200, -10, 600,400);
        }
        if (keyCode == RIGHT){
          xPos = xPos + 3;
          location.x = location.x +3;
          image(rightArrow, 200, -10, 600,400);
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
          image(upArrow, 200, -10, 600,400);
        }
        if (keyCode == DOWN){
          location.y = location.y;
          image(downArrow, 200, -10, 600,400);
        }
        if (keyCode == LEFT){
          location.x = location.x;
          image(leftArrow, 200, -10, 600,400);
        }
        if (keyCode == RIGHT){
          location.x = location.x;
          image(rightArrow, 200, -10, 600,400);
        }
      }
    } //end of keypressed
    
  }//end of nocontrol
 
//cant control body  
    void zombieControl(){
    image(rathealth, location.x-50, location.y-35, 92, 80);
    fill(0,255,0);
   // ellipse (50,50,50,50);
    
     if(keyPressed == true){
      if(key == CODED){
        if (keyCode == UP){
          location.x = location.x + 3;
          image(upArrow, 200, -10, 600,400);
        }
        if (keyCode == DOWN){
          location.x = location.x - 3;
          image(downArrow, 200, -10, 600,400);
        }
        if (keyCode == LEFT){
          location.y = location.y - 3;
          image(leftArrow, 200, -10, 600,400);
        }
        if (keyCode == RIGHT){
          location.y = location.y + 3;
          image(rightArrow, 200, -10, 600,400);
        }
      }
    } //end of keypressed
    
  }//end of nocontrol
  
  
  void collide(){
  
//HORIZONTAL RECTANGLES RIGHT SIDE
   if (location.x >= width-180 && location.x <= width){
     if(location.y > 60-15 && location.y < 80-15){
     location.y = 60-15;
     }
     else if(location.y >= 60 && location.y < 90+30){
     location.y = 90+30;
     }
     
     else if(location.y > 360-15 && location.y < 380-15){
     location.y = 360-15;
     }
     else if(location.y >= 360 && location.y < 390+30){
     location.y = 390+30;
     }
     
     else if(location.y > 660-15 && location.y < 680-15){
     location.y = 660-15;
     }
     else if(location.y >= 660 && location.y < 690+30){
     location.y = 690+30;
     }
   }//end hori rects RIGHT side
   
   if(location.y > 60 && location.y <90 && location.x <= 180){
     location.x = 180;
   
   }
   
//HORIZONTAL RECTANGLES LEFT SIDE
   if (location.x >= 0 && location.x <= 180){
     if(location.y > 60-15 && location.y < 80-15){
     location.y = 60-15;
     }
     else if(location.y >= 60 && location.y < 90+30){
     location.y = 90+30;
     }
     
     else if(location.y > 360-15 && location.y < 380-15){
     location.y = 360-15;
     }
     else if(location.y >= 360 && location.y < 390+30){
     location.y = 390+30;
     }
     
     else if(location.y > 660-15 && location.y < 680-15){
     location.y = 660-15;
     }
     else if(location.y >= 660 && location.y < 690+30){
     location.y = 690+30;
     }
   }//end hori rects LEFT SIDE
   
   //HORIZONTAL RECTANGLES LEFT SIDE SMALL
    if (location.x >= 100 && location.x <= 250){
     if(location.y > 180-15 && location.y < 210-15){
     location.y = 180-15;
     }
     else if(location.y >= 180 && location.y < 210+30){
     location.y = 210+30;
     }
     
     if(location.y > 480-15 && location.y < 510-15){
     location.y = 480-15;
     }
     else if(location.y >= 480 && location.y < 510+30){
     location.y = 510+30;
     } 
     
   }//end hori rects LEFT SIDE
    
   //HORIZONTAL RECTANGLES RIGHT SIDE SMALL
    if (location.x >= 750 && location.x <= 900){
     if(location.y > 180-15 && location.y < 210-15){
     location.y = 180-15;
     }
     else if(location.y >= 180 && location.y < 210+30){
     location.y = 210+30;
     }
     
     if(location.y > 480-15 && location.y < 510-15){
     location.y = 480-15;
     }
     else if(location.y >= 480 && location.y < 510+30){
     location.y = 510+30;
     } 
     
   }//end hori rects RIGHT SIDE SMALL
  
  //HORIZONTAL RECTANGLES SMALL MIDDLE
    if (location.x >= 250 && location.x <= 400){
     if(location.y > 300-15 && location.y < 330-15){
     location.y = 300-15;
     }
     else if(location.y >= 300 && location.y < 330+30){
     location.y = 330+30;
     }
     
     
   }//end hori rects SMALL MIDDLE
   
    if (location.x >= 600 && location.x <= 750){
     if(location.y > 300-15 && location.y < 330-15){
     location.y = 300-15;
     }
     else if(location.y >= 300 && location.y < 330+30){
     location.y = 330+30;
     }
     
   }//end hori rects SMALL MIDDLE
   
 //VERTICAL RECTANGLE LEFT TOP
   if (location.y >= 0 && location.y <= 200){
     if(location.x > 340-15 && location.x < 370-15){
     location.x = 340-15;
     }
     else if(location.x >= 330 && location.x < 370+15){
     location.x = 370+15;
     }
     
   }//end VERTICAL RECTANGLE LEFT TOP
   
    //VERTICAL RECTANGLE RIGHT TOP
   if (location.y >= 0 && location.y <= 200){
     if(location.x > 640-15 && location.x < 670-15){
     location.x = 640-15;
     }
     else if(location.x >= 640 && location.x < 670+15){
     location.x = 670+15;
     }
     
   }//end VERTICAL RECTANGLE RIGHT TOP
   
   //VERTICAL RECTANGLE LEFT bottom
   if (location.y >= 520 && location.y <= 700){
     if(location.x > 340-15 && location.x < 370-15){
     location.x = 340-15;
     }
     else if(location.x >= 330 && location.x < 370+15){
     location.x = 370+15;
     }
     
   }//end VERTICAL RECTANGLE LEFT bottom
   
    //VERTICAL RECTANGLE RIGHT bottom
   if (location.y >= 520 && location.y <= 700){
     if(location.x > 640-15 && location.x < 670-15){
     location.x = 640-15;
     }
     else if(location.x >= 640 && location.x < 670+15){
     location.x = 670+15;
     }
     
   }//end VERTICAL RECTANGLE RIGHT bottom
  
  //SMALL VERTICAL RECTANGLE top middle
   if (location.y >= 125 && location.y <= 275){
     if(location.x > 490-15 && location.x < 520-15){
     location.x = 490-15;
     }
     else if(location.x >= 490 && location.x < 520+15){
     location.x = 520+15;
     }
     
   }//end small VERTICAL RECTANGLE bottom middle
   
   //SMALL VERTICAL RECTANGLE top middle
   if (location.y >= 400 && location.y <= 550){
     if(location.x > 490-15 && location.x < 520-15){
     location.x = 490-15;
     }
     else if(location.x >= 490 && location.x < 520+15){
     location.x = 520+15;
     }
     
   }//end small VERTICAL RECTANGLE bottom middle
  
  
  }//end of collide
  
}