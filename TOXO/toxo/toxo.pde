
Rat rat;
//PImage rat;

boolean ratControl = true;

//position of rat
float ratX = width/2;
float ratY = height/2;

//PImage parasite;
Parasite p1;
Parasite p2;
Parasite p3;
boolean paraControl;

float paraX;
float paraY;

int timer;

void setup()
{
  size (1000, 700);
   timer = 0;
   
   frameRate(30);
   
   rat = new Rat(500,10);
   
   p1 = new Parasite(100, 600);
   p2 = new Parasite(600, 50);
   p3 = new Parasite(800,200);
  
 // rat = loadImage("rat.png");
  //parasite = loadImage("parasite.png");
  
 
}


void draw()
{
  background(0);
  timer ++;
  
  rat.draw();
  p1.draw();
  p2.draw();
  p3.draw();
  
  if(timer > 60 && timer < 120){
  ratControl = true;
  paraControl = false;
  //println("rat is in control");
  }
  
  else if(timer > 120 && timer < 180){
  ratControl = false;
  paraControl = true;
  }
  
  //else if(timer > 180){
  //ratControl = true;
  //paraControl = false;
  //}
  
  if(ratControl == true){
   rat.ratControl();
  }
  else{
   rat.noControl();
  }
  
    if(paraControl == true){
   p1.ratControl();
  }
  else{
   p1.noControl();
  }


 
}//end of draw