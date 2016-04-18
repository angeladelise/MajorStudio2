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
  
   void collide(){
  
//HORIZONTAL RECTANGLES RIGHT SIDE
   if (xPos >= width-180 && xPos <= width){
     if(yPos > 60-15 && yPos < 80-15){
     yPos = 60-15;
     }
     else if(yPos >= 60 && yPos < 90+30){
     yPos = 90+30;
     }
     
     else if(yPos > 360-15 && yPos < 380-15){
     yPos = 360-15;
     }
     else if(yPos >= 360 && yPos < 390+30){
     yPos = 390+30;
     }
     
     else if(yPos > 660-15 && yPos < 680-15){
     yPos = 660-15;
     }
     else if(yPos >= 660 && yPos < 690+30){
     yPos = 690+30;
     }
   }//end hori rects RIGHT side
   
   if(yPos > 60 && yPos <90 && xPos <= 180){
     xPos = 180;
   
   }
   
//HORIZONTAL RECTANGLES LEFT SIDE
   if (xPos >= 0 && xPos <= 180){
     if(yPos > 60-15 && yPos < 80-15){
     yPos = 60-15;
     }
     else if(yPos >= 60 && yPos < 90+30){
     yPos = 90+30;
     }
     
     else if(yPos > 360-15 && yPos < 380-15){
     yPos = 360-15;
     }
     else if(yPos >= 360 && yPos < 390+30){
     yPos = 390+30;
     }
     
     else if(yPos > 660-15 && yPos < 680-15){
     yPos = 660-15;
     }
     else if(yPos >= 660 && yPos < 690+30){
     yPos = 690+30;
     }
   }//end hori rects LEFT SIDE
   
   //HORIZONTAL RECTANGLES LEFT SIDE SMALL
    if (xPos >= 100 && xPos <= 250){
     if(yPos > 180-15 && yPos < 210-15){
     yPos = 180-15;
     }
     else if(yPos >= 180 && yPos < 210+30){
     yPos = 210+30;
     }
     
     if(yPos > 480-15 && yPos < 510-15){
     yPos = 480-15;
     }
     else if(yPos >= 480 && yPos < 510+30){
     yPos = 510+30;
     } 
     
   }//end hori rects LEFT SIDE
    
   //HORIZONTAL RECTANGLES RIGHT SIDE SMALL
    if (xPos >= 750 && xPos <= 900){
     if(yPos > 180-15 && yPos < 210-15){
     yPos = 180-15;
     }
     else if(yPos >= 180 && yPos < 210+30){
     yPos = 210+30;
     }
     
     if(yPos > 480-15 && yPos < 510-15){
     yPos = 480-15;
     }
     else if(yPos >= 480 && yPos < 510+30){
     yPos = 510+30;
     } 
     
   }//end hori rects RIGHT SIDE SMALL
  
  //HORIZONTAL RECTANGLES SMALL MIDDLE
    if (xPos >= 250 && xPos <= 400){
     if(yPos > 300-15 && yPos < 330-15){
     yPos = 300-15;
     }
     else if(yPos >= 300 && yPos < 330+30){
     yPos = 330+30;
     }
     
     
   }//end hori rects SMALL MIDDLE
   
    if (xPos >= 600 && xPos <= 750){
     if(yPos > 300-15 && yPos < 330-15){
     yPos = 300-15;
     }
     else if(yPos >= 300 && yPos < 330+30){
     yPos = 330+30;
     }
     
   }//end hori rects SMALL MIDDLE
   
 //VERTICAL RECTANGLE LEFT TOP
   if (yPos >= 0 && yPos <= 200){
     if(xPos > 340-15 && xPos < 370-15){
     xPos = 340-15;
     }
     else if(xPos >= 330 && xPos < 370+15){
     xPos = 370+15;
     }
     
   }//end VERTICAL RECTANGLE LEFT TOP
   
    //VERTICAL RECTANGLE RIGHT TOP
   if (yPos >= 0 && yPos <= 200){
     if(xPos > 640-15 && xPos < 670-15){
     xPos = 640-15;
     }
     else if(xPos >= 640 && xPos < 670+15){
     xPos = 670+15;
     }
     
   }//end VERTICAL RECTANGLE RIGHT TOP
   
   //VERTICAL RECTANGLE LEFT bottom
   if (yPos >= 520 && yPos <= 700){
     if(xPos > 340-15 && xPos < 370-15){
     xPos = 340-15;
     }
     else if(xPos >= 330 && xPos < 370+15){
     xPos = 370+15;
     }
     
   }//end VERTICAL RECTANGLE LEFT bottom
   
    //VERTICAL RECTANGLE RIGHT bottom
   if (yPos >= 520 && yPos <= 700){
     if(xPos > 640-15 && xPos < 670-15){
     xPos = 640-15;
     }
     else if(xPos >= 640 && xPos < 670+15){
     xPos = 670+15;
     }
     
   }//end VERTICAL RECTANGLE RIGHT bottom
  
  //SMALL VERTICAL RECTANGLE top middle
   if (yPos >= 125 && yPos <= 275){
     if(xPos > 490-15 && xPos < 520-15){
     xPos = 490-15;
     }
     else if(xPos >= 490 && xPos < 520+15){
     xPos = 520+15;
     }
     
   }//end small VERTICAL RECTANGLE bottom middle
   
   //SMALL VERTICAL RECTANGLE top middle
   if (yPos >= 400 && yPos <= 550){
     if(xPos > 490-15 && xPos < 520-15){
     xPos = 490-15;
     }
     else if(xPos >= 490 && xPos < 520+15){
     xPos = 520+15;
     }
     
   }//end small VERTICAL RECTANGLE bottom middle
  
  
  }

}