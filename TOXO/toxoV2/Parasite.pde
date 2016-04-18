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
    tint(255, 150);
    image(parasite, 50, 100, 100, 120); 
    tint(255,255);
    
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
    
 //IF IMMUNE IS FALSE
 if(immune == false){
  //follows rat
  fill(255,255,0);
  //ellipse(50,50,200,100);
    if(abs(location.x-rat.xPos) <= 5){
      if(rat.yPos> location.y){
           location.y = location.y+ 2;
           }
       else if(rat.yPos <location.y){
           location.y = location.y- 2;
           }     
         }// end of abs value
       else if(rat.xPos> location.x){
        location.x = location.x+ 2;
       }
       else if(rat.xPos <location.x){
         location.x = location.x- 2;
       } 
      
 }// end of immune is false
    
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
    location.y = 5000;
  
   location.x = location.x +2;
   location.y = location.y +2;
  }
  
  void newPosition(){
    location.x = random(0, width);
    location.y = random(0, height);
  
  }
  
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
     location.x = location.x+ 2;
     }
     else if(location.y >= 60 && location.y < 90+30){
     location.y = 90+30;
     location.x = location.x+ 2;
     }
     
     else if(location.y > 360-15 && location.y < 380-15){
     location.y = 360-15;
     location.x = location.x+ 2;
     }
     else if(location.y >= 360 && location.y < 390+30){
     location.y = 390+30;
     location.x = location.x+ 2;
     }
     
     else if(location.y > 660-15 && location.y < 680-15){
     location.y = 660-15;
     location.x = location.x+ 2;
     }
     else if(location.y >= 660 && location.y < 690+30){
     location.y = 690+30;
     location.x = location.x+ 2;
     }
   }//end hori rects LEFT SIDE
   
   //HORIZONTAL RECTANGLES LEFT SIDE SMALL
    if (location.x >= 100 && location.x <= 250){
     if(location.y > 180-15 && location.y < 210-15){
     location.y = 180-15;
     location.x = location.x- 2;
     }
     else if(location.y >= 180 && location.y < 210+30){
     location.y = 210+30;
     location.x = location.x- 2;
     }
     
     if(location.y > 480-15 && location.y < 510-15){
     location.y = 480-15;
     location.x = location.x- 2;
     }
     else if(location.y >= 480 && location.y < 510+30){
     location.y = 510+30;
     location.x = location.x- 2;
     } 
     
   }//end hori rects LEFT SIDE
    
   //HORIZONTAL RECTANGLES RIGHT SIDE SMALL
    if (location.x >= 750 && location.x <= 900){
     if(location.y > 180-15 && location.y < 210-15){
     location.y = 180-15;
     location.x = location.x- 2;
     }
     else if(location.y >= 180 && location.y < 210+30){
     location.y = 210+30;
     location.x = location.x- 2;
     }
     
     if(location.y > 480-15 && location.y < 510-15){
     location.y = 480-15;
     location.x = location.x- 2;
     }
     else if(location.y >= 480 && location.y < 510+30){
     location.y = 510+30;
     location.x = location.x- 2;
     } 
     
   }//end hori rects RIGHT SIDE SMALL
  
  //HORIZONTAL RECTANGLES SMALL MIDDLE
    if (location.x >= 250 && location.x <= 400){
     if(location.y > 300-15 && location.y < 330-15){
     location.y = 300-15;
     location.x = location.x- 2;
     }
     else if(location.y >= 300 && location.y < 330+30){
     location.y = 330+30;
     location.x = location.x- 2;
     }
     
     
   }//end hori rects SMALL MIDDLE
   
    if (location.x >= 600 && location.x <= 750){
     if(location.y > 300-15 && location.y < 330-15){
     location.y = 300-15;
     location.x = location.x- 2;
     }
     else if(location.y >= 300 && location.y < 330+30){
     location.y = 330+30;
     location.x = location.x- 2;
     }
     
   }//end hori rects SMALL MIDDLE
   
 //VERTICAL RECTANGLE LEFT TOP
   if (location.y >= 0 && location.y <= 200){
     if(location.x > 340-15 && location.x < 370-15){
     location.x = 340-15;
     location.y = location.y +2;
     }
     else if(location.x >= 330 && location.x < 370+15){
     location.x = 370+15;
     location.y = location.y +2;
     }
     
   }//end VERTICAL RECTANGLE LEFT TOP
   
    //VERTICAL RECTANGLE RIGHT TOP
   if (location.y >= 0 && location.y <= 200){
     if(location.x > 640-15 && location.x < 670-15){
     location.x = 640-15;
     location.y = location.y +2;
     }
     else if(location.x >= 640 && location.x < 670+15){
     location.x = 670+15;
     location.y = location.y +2;
     }
     
   }//end VERTICAL RECTANGLE RIGHT TOP
   
   //VERTICAL RECTANGLE LEFT bottom
   if (location.y >= 520 && location.y <= 700){
     if(location.x > 340-15 && location.x < 370-15){
     location.x = 340-15;
     location.y = location.y -2;
     }
     else if(location.x >= 330 && location.x < 370+15){
     location.x = 370+15;
     location.y = location.y -2;
     }
     
   }//end VERTICAL RECTANGLE LEFT bottom
   
    //VERTICAL RECTANGLE RIGHT bottom
   if (location.y >= 520 && location.y <= 700){
     if(location.x > 640-15 && location.x < 670-15){
     location.x = 640-15;
     location.y = location.y -2;
     }
     else if(location.x >= 640 && location.x < 670+15){
     location.x = 670+15;
     location.y = location.y -2;
     }
     
   }//end VERTICAL RECTANGLE RIGHT bottom
  
  //SMALL VERTICAL RECTANGLE top middle
   if (location.y >= 125 && location.y <= 275){
     if(location.x > 490-15 && location.x < 520-15){
     location.x = 490-15;
     location.y = location.y -2;
     }
     else if(location.x >= 490 && location.x < 520+15){
     location.x = 520+15;
     location.y = location.y -2;
     }
     
   }//end small VERTICAL RECTANGLE bottom middle
   
   //SMALL VERTICAL RECTANGLE top middle
   if (location.y >= 400 && location.y <= 550){
     if(location.x > 490-15 && location.x < 520-15){
     location.x = 490-15;
     location.y = location.y -2;
     }
     else if(location.x >= 490 && location.x < 520+15){
     location.x = 520+15;
     location.y = location.y -2;
     }
     
   }//end small VERTICAL RECTANGLE bottom middle
  
  
  }

}