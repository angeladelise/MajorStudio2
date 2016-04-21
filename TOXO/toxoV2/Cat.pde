class Cat{
  float xPos;
  float yPos;
  PImage cat;
  PVector location;
  
  Cat(float xPos, float yPos){
    this.xPos = xPos;
    this.yPos = yPos;

    cat = loadImage("cat.png");
    location = new PVector(xPos,yPos); // initial position
  }

  void draw(){
    xPos = location.x;
    yPos = location.y;
     
    image(cat, location.x-40, location.y-40, 80,80);
    }
  
  void followRat(){
    
  if(abs(location.x-rat.xPos) <= 5){
      if(rat.yPos> location.y){
           location.y = location.y+ 4;
           }
       else if(rat.yPos <location.y){
           location.y = location.y- 4;
           }     
         }// end of abs value
       else if(rat.xPos> location.x){
        location.x = location.x+ 4;
       }
       else if(rat.xPos <location.x){
         location.x = location.x- 4;
       } 
  
  } //end follow Rat
  
 
 void wander(){
    //location.x = location.x -4;
    //location.y = location.y -4;
    
    
 
//EXTERNAL BOUNDARIES FOR RAT WITH SIZE ACCOUNTED FOR
  if (location.x > width -15){
   location.x = width -15;
   location.x = location.x- 4;
  }
  else if(location.x < 15){
   location.x = 15;
   location.x = location.x+ 4;
  }
  if(location.y < 30){
   location.y = 30;
   location.y = location.y+ 4;
  }
  else if(location.y > height -30){
   location.y = height -30;
   location.y = location.y- 4;
  }
  
  } //end wander
  
  void up(){
  location.y = location.y- 4;
  }
  
  void down(){
  location.y = location.y+ 4;
  }
  void left(){
  location.x = location.x- 4;
  }
  void right(){
  location.x = location.x+ 4;
  }

void collide(){
  
//HORIZONTAL RECTANGLES RIGHT SIDE
   if (location.x >= width-180 && location.x <= width){
     if(location.y > 60-15 && location.y < 80-15){
     location.y = 60-15;
    // location.x = location.x+ 4;
     catControl();
     }
     else if(location.y >= 60 && location.y < 90+30){
     location.y = 90+30;
    // location.x = location.x+ 4;
    // location.y = location.y+ 4;
    catControl();
     }
     
     else if(location.y > 360-15 && location.y < 380-15){
     location.y = 360-15;
    // location.x = location.x+ 4;
    catControl();
     }
     else if(location.y >= 360 && location.y < 390+30){
     location.y = 390+30;
    // location.x = location.x+ 4;
    catControl();
     }
     
     else if(location.y > 660-15 && location.y < 680-15){
     location.y = 660-15;
     //location.x = location.x+4;
     catControl();
     }
     else if(location.y >= 660 && location.y < 690+30){
     location.y = 690+30;
    // location.x = location.x+ 4;
    catControl();
     }
   }//end hori rects RIGHT side
   
   if(location.y > 60 && location.y <90 && location.x <= 180){
     location.x = 180;
    // location.y = location.y +4;
    catControl();
   }
   
//HORIZONTAL RECTANGLES LEFT SIDE
   if (location.x >= 0 && location.x <= 180){
     if(location.y > 60-15 && location.y < 80-15){
     location.y = 60-15;
   //  location.x = location.x+ 4;
     catControl();
     }
     else if(location.y >= 60 && location.y < 90+30){
     location.y = 90+30;
    // location.x = location.x+ 4;
    catControl();
     }
     
     else if(location.y > 360-15 && location.y < 380-15){
     location.y = 360-15;
   //  location.x = location.x+ 4;
   catControl();
     }
     else if(location.y >= 360 && location.y < 390+30){
     location.y = 390+30;
    // location.x = location.x+ 4;
    catControl();
     }
     
     else if(location.y > 660-15 && location.y < 680-15){
     location.y = 660-15;
   //  location.x = location.x+ 4;
   catControl();
     }
     else if(location.y >= 660 && location.y < 690+30){
     location.y = 690+30;
    // location.x = location.x+ 4;
    catControl();
     }
   }//end hori rects LEFT SIDE
   
   //HORIZONTAL RECTANGLES LEFT SIDE SMALL
    if (location.x >= 100 && location.x <= 250){
     if(location.y > 180-15 && location.y < 210-15){
     location.y = 180-15;
   //  location.x = location.x+ 4;
    // location.y = location.y- 4;
    catControl();
     }
     else if(location.y >= 180 && location.y < 210+30){
     location.y = 210+30;
  //   location.x = location.x+ 4;
   //  location.y = location.y+4;
   catControl();
     
     }
     
     if(location.y > 480-15 && location.y < 510-15){
     location.y = 480-15;
    // location.x = location.x+ 4;
   //  location.y = location.y- 4;
   catControl();
     }
     else if(location.y >= 480 && location.y < 510+30){
     location.y = 510+30;
    // location.x = location.x+ 4;
    // location.y = location.y+ 4;
    catControl();
     } 
     
   }//end hori rects LEFT SIDE
    
   //HORIZONTAL RECTANGLES RIGHT SIDE SMALL
    if (location.x >= 750 && location.x <= 900){
     if(location.y > 180-15 && location.y < 210-15){
     location.y = 180-15;
    // location.x = location.x- 4;
    catControl();
     }
     else if(location.y >= 180 && location.y < 210+30){
     location.y = 210+30;
    // location.x = location.x- 4;
     catControl();
     }
     
     if(location.y > 480-15 && location.y < 510-15){
     location.y = 480-15;
   //  location.x = location.x- 4;
     catControl();
     }
     else if(location.y >= 480 && location.y < 510+30){
     location.y = 510+30;
    // location.x = location.x- 4;
     catControl();
     } 
     
   }//end hori rects RIGHT SIDE SMALL
  
  //HORIZONTAL RECTANGLES SMALL MIDDLE
    if (location.x >= 250 && location.x <= 400){
     if(location.y > 300-15 && location.y < 330-15){
     location.y = 300-15;
    // location.x = location.x- 4;
    catControl();
     }
     else if(location.y >= 300 && location.y < 330+30){
     location.y = 330+30;
    // location.x = location.x- 4;
    catControl();
     }
     
     
   }//end hori rects SMALL MIDDLE
   
    if (location.x >= 600 && location.x <= 750){
     if(location.y > 300-15 && location.y < 330-15){
     location.y = 300-15;
   //  location.x = location.x- 4;
   catControl();
     }
     else if(location.y >= 300 && location.y < 330+30){
     location.y = 330+30;
   //  location.x = location.x- 4;
   catControl();
     }
     
   }//end hori rects SMALL MIDDLE
   
 //VERTICAL RECTANGLE LEFT TOP
   if (location.y >= 0 && location.y <= 200){
     if(location.x > 340-15 && location.x < 370-15){
     location.x = 340-15;
    // location.y = location.y +4;
    catControl();
     }
     else if(location.x >= 330 && location.x < 370+15){
     location.x = 370+15;
    // location.y = location.y +4;
    catControl();
     }
     
   }//end VERTICAL RECTANGLE LEFT TOP
   
    //VERTICAL RECTANGLE RIGHT TOP
   if (location.y >= 0 && location.y <= 200){
     if(location.x > 640-15 && location.x < 670-15){
     location.x = 640-15;
    // location.y = location.y +4;
    catControl();
     }
     else if(location.x >= 640 && location.x < 670+15){
     location.x = 670+15;
    // location.y = location.y +4;
    catControl();
     }
     
   }//end VERTICAL RECTANGLE RIGHT TOP
   
   //VERTICAL RECTANGLE LEFT bottom
   if (location.y >= 520 && location.y <= 700){
     if(location.x > 340-15 && location.x < 370-15){
     location.x = 340-15;
    // location.y = location.y -4;
     catControl();
     }
     else if(location.x >= 330 && location.x < 370+15){
     location.x = 370+15;
   //  location.y = location.y -4;
     catControl();
     }
     
   }//end VERTICAL RECTANGLE LEFT bottom
   
    //VERTICAL RECTANGLE RIGHT bottom
   if (location.y >= 520 && location.y <= 700){
     if(location.x > 640-15 && location.x < 670-15){
     location.x = 640-15;
    // location.y = location.y -4;
    catControl();
     }
     else if(location.x >= 640 && location.x < 670+15){
     location.x = 670+15;
    // location.y = location.y -4;
    catControl();
     }
     
   }//end VERTICAL RECTANGLE RIGHT bottom
  
  //SMALL VERTICAL RECTANGLE top middle
   if (location.y >= 125 && location.y <= 275){
     if(location.x > 490-15 && location.x < 520-15){
     location.x = 490-15;
    // location.y = location.y +4;
    catControl();
     }
     else if(location.x >= 490 && location.x < 520+15){
     location.x = 520+15;
    // location.y = location.y +4;
    catControl();
     }
     
   }//end small VERTICAL RECTANGLE bottom middle
   
   //SMALL VERTICAL RECTANGLE top middle
   if (location.y >= 400 && location.y <= 550){
     if(location.x > 490-15 && location.x < 520-15){
     location.x = 490-15;
   //  location.y = location.y +4;
   catControl();
     }
     else if(location.x >= 490 && location.x < 520+15){
     location.x = 520+15;
     //location.y = location.y +4;
     catControl();
     }
     
   }//end small VERTICAL RECTANGLE bottom middle
  
  
  }

}