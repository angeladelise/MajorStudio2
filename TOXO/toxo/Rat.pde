class Rat{
  float xPos;
  float yPos;
  PImage rat; 
  PImage rathealth;
  PVector location; 

  
 //inital x and y position 
 Rat(float xPos, float yPos){
  this.xPos = xPos;
  this.yPos = yPos;
  
 location = new PVector(800,400); // initial position
   
   rat = loadImage("rat.png");
   rathealth = loadImage("rathealth.png");
 }
  
  void draw(){
    //locationx and y to be at CENTER of image
  
    image(rat, location.x-15, location.y-30, 25, 67);
    
    if (immune == true){
    image(rathealth, location.x-50, location.y-35, 92, 80);
    }
    
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
   
   
   //if immune is true then go after parasites
   //go after which one is the closest
   if (immune == true){
     //if distance to parasite 1 is less than parasite 2
     if(dist(p1.xPos, p1.yPos, location.x, location.y) < dist(p2.xPos, p2.yPos, location.x, location.y)){
       if(dist(p1.xPos, p1.yPos, location.x, location.y) < dist(p3.xPos, p3.yPos, location.x, location.y)){
         if(p1.xPos> location.x){
         location.x = location.x+ 3;
       }
       else if(p1.xPos <location.x){
         location.x = location.x- 3;
       }
       //if the x position is correct then go after the y
       else if(location.x == p1.xPos){
           if(p1.yPos> location.y){
           location.y = location.y+ 3;
           }
         else if(p1.yPos <location.y){
           location.y = location.y- 3;
         }
         
         }
       }
     }//end of p1
     
  //PARASITE 2 FOLLOW IT
      if(dist(p1.xPos, p1.yPos, location.x, location.y) > dist(p2.xPos, p2.yPos, location.x, location.y)){
       if(dist(p2.xPos, p2.yPos, location.x, location.y) < dist(p3.xPos, p3.yPos, location.x, location.y)){
         if(p2.xPos> location.x){
         location.x = location.x+ 3;
       }
       else if(p2.xPos <location.x){
         location.x = location.x- 3;
       }
       //if the x position is correct then go after the y
       else if(location.x == p2.xPos){
           if(p2.yPos> location.y){
           location.y = location.y+ 3;
           }
         else if(p2.yPos <location.y){
           location.y = location.y- 3;
         }
         
         }
       }
       
       line(p2.xPos, p2.yPos, location.x, location.y);
     }//end of p2
     
 //PARASITE 3 FOLLOW IT
      if(dist(p3.xPos, p3.yPos, location.x, location.y) < dist(p2.xPos, p2.yPos, location.x, location.y)){
       if(dist(p3.xPos, p3.yPos, location.x, location.y) < dist(p1.xPos, p1.yPos, location.x, location.y)){
         if(p3.xPos> location.x){
         location.x = location.x+ 3;
       }
       else if(p3.xPos <location.x){
         location.x = location.x- 3;
       }
       //if the x position is correct then go after the y
       else if(location.x == p3.xPos){
           if(p3.yPos> location.y){
           location.y = location.y+ 3;
           }
         else if(p3.yPos <location.y){
           location.y = location.y- 3;
         }
         
         }
       }
     }//end of p3
     
     
   
   } // end of iMMUNE TRUE
   
 //IF IMMUNE IS FALSE THEN RUN AWAY FROM THE PARASITES

   if (immune == false){
     //if distance to parasite 1 is less than parasite 2
     if(dist(p1.xPos, p1.yPos, location.x, location.y) < dist(p2.xPos, p2.yPos, location.x, location.y)){
       if(dist(p1.xPos, p1.yPos, location.x, location.y) < dist(p3.xPos, p3.yPos, location.x, location.y)){
         if(p1.xPos>= location.x){
         location.x = location.x- 3;
       }
       else if(p1.xPos <location.x){
         location.x = location.x+ 3;
       }
       
       if(p1.yPos> location.y){
           location.y = location.y- 3;
           }
       else if(p1.yPos <location.y){
           location.y = location.y+ 3;
         }        
       }
     }//end of p1
     
  //PARASITE 2 RUN AWAY
      if(dist(p1.xPos, p1.yPos, location.x, location.y) > dist(p2.xPos, p2.yPos, location.x, location.y)){
       if(dist(p2.xPos, p2.yPos, location.x, location.y) < dist(p3.xPos, p3.yPos, location.x, location.y)){
         if(p2.xPos> location.x){
         location.x = location.x- 3;
       }
       else if(p2.xPos <location.x){
         location.x = location.x+ 3;
       }
       
       if(p2.yPos> location.y){
           location.y = location.y- 3;
           }
       else if(p2.yPos <location.y){
           location.y = location.y+ 3;
         }   
       }
      }//end of p2
     
 //PARASITE 3 FOLLOW IT
      if(dist(p3.xPos, p3.yPos, location.x, location.y) < dist(p2.xPos, p2.yPos, location.x, location.y)){
       if(dist(p3.xPos, p3.yPos, location.x, location.y) < dist(p1.xPos, p1.yPos, location.x, location.y)){
         if(p3.xPos> location.x){
         location.x = location.x- 3;
       }
       else if(p3.xPos <location.x){
         location.x = location.x+ 3;
       }
       if(p3.yPos> location.y){
           location.y = location.y- 3;
           }
       else if(p3.yPos <location.y){
           location.y = location.y+ 3;
         }
         
       }
     }//end of p3  
   } // end of iMMUNE FALSE
 
    
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

}