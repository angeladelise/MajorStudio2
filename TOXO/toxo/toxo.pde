int radius = 10, directionX = 1, directionY = 1;
//float y = 10, x = 10, speed = 3;
//float rotation = 0;
//float antiRotate = 0.1;
float start, stop;
PImage rat;

boolean ratControl = true;

//position of rat
float ratX = width/2;
float ratY = height/2;

PImage parasite;
boolean paraControl;

float paraX;
float paraY;

int timer;

void setup()
{
  size (1000, 700);
   timer = 0;
   
   frameRate(30);
  
  rat = loadImage("rat.png");
  parasite = loadImage("parasite.png");
  
 
}


void draw()
{
  background(0);
  timer ++;
  
  if(timer > 60 && timer < 120){
  ratControl = true;
  paraControl = false;
  }
  
  else if(timer > 120 && timer < 180){
  ratControl = false;
  paraControl = true;
  }
  
  else if(timer > 180 && timer < 240){
  ratControl = true;
  paraControl = false;
  }
  

//RAT PLAYER
   image(rat, ratX, ratY, 30,85);
   
//PARASITE PLAYER
   image(parasite, paraX, paraY, 50, 60);


//EXTERNAL BOUNDARIES FOR RAT
  if (ratX > width)
   ratX = width;
  else if(ratX < 0)
   ratX = 0;
  if(ratY < 0)
   ratY = 0;
  else if(ratY > height)
   ratY = height;
  
  
//EXTERNAL BOUNDARIES FOR PARA1
  if (paraX > width)
   paraX = width;
  else if(paraX < 0)
   paraX = 0;
  if(paraY < 0)
   paraY = 0;
  else if(paraY > height)
   paraY = height;
  


 
}//end of draw


void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      if (ratControl == true){
        ratY = ratY - 5;
      }
      if(paraControl == true){
      paraY = paraY - 5;
      }
    }

    if (keyCode == DOWN)
    {
       if (ratControl == true){
        ratY = ratY + 5;
      }
      if(paraControl == true){
      paraY = paraY +5;
      }
    }

    if (keyCode == LEFT)
    {
       if (ratControl == true){
        ratX = ratX -5;
      }
      if(paraControl == true){
      paraX = paraX -5;
      }
    }

    if (keyCode == RIGHT)
    {
       if (ratControl == true){
        ratX = ratX + 5;
      }
      if(paraControl == true){
        paraX = paraX +5;
      }
    }
  

  }
 
 
}//end of keypressed