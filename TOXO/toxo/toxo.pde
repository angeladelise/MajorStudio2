
Rat rat;

boolean ratControl;

Parasite p1;
Parasite p2;
Parasite p3;
boolean paraControl;

int timer;

int random;

// Get a random element from an array
String[] words = {"rat", "rat", "rat", "p1", "p2", "p3" };
int index;

void setup()
{
   size (1000, 700);
   timer = 0;
   
   frameRate(30);
   
   rat = new Rat(500,10);
   
   p1 = new Parasite(100, 600);
   p2 = new Parasite(600, 50);
   p3 = new Parasite(800,200);
   
   //pick a random number to change player
   random = int(random(30,100));

  
}


void draw()
{
  background(0);
  timer ++;
  
  rat.draw();
  p1.draw();
  p2.draw();
  p3.draw();
  
  
  println(timer);
  println("random" + random);
  
  if(timer == random){
    index = int(random(words.length));  // Same as int(random(5))
    println(words[index]);  // Prints one of the five words
    
    //reset timer and new random value
    timer = 0;
    random = int(random(30,100));
   } 
   
     if(words[index] == "rat"){
      rat.Control();
      p1.noControl();
      p2.noControl();
      p3.noControl();
      }
    else if(words[index] == "p1"){
      p1.Control();
      rat.noControl();
      p2.noControl();
      p3.noControl();
      }
    else if(words[index] == "p2"){
      p2.Control();
      p1.noControl();
      rat.noControl();
      p3.noControl();
       }
    else if(words[index] == "p3"){
      p3.Control();
      p1.noControl();
      p2.noControl();
      rat.noControl();
      }
    
    
    
    
    
  
  //if(timer > 60 && timer < 120){
  //ratControl = true;
  //paraControl = false;
  ////println("rat is in control");
  //}
  
  //else if(timer > 120 && timer < 180){
  //ratControl = false;
  //paraControl = true;
  //}
  
  
  
  //if(ratControl == true){
  // rat.Control();
  //}
  //else{
  // rat.noControl();
  //}
  
  // if(paraControl == true){
  // p1.Control();
  //}
  //else{
  // p1.noControl();
  //}


 
}//end of draw