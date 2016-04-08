
Rat rat;
boolean ratControl;
boolean immune;
int immuneTimer;

Parasite p1;
Parasite p2;
Parasite p3;
boolean paraControl;
boolean p1dead;
boolean p2dead;
boolean p3dead;

Cheese c1;

int timer;

int random;

// Get a random element from an array
String[] words = {"rat", "rat", "p1", "p2", "p3" };
int index;

int lives = 3;

int state;

PImage home;
PImage instr1;
PImage instr2;

int homeTimer = 0;
void setup()
 {
   size (1000, 700);
   timer = 0;
   immuneTimer = 0;
   
   frameRate(30);
   
   rat = new Rat(1000,400);
   
   p1 = new Parasite(100, 600);
   p2 = new Parasite(600, 50);
   p3 = new Parasite(800,200);
   
   c1 = new Cheese(900,400);
   
   //pick a random number to change player
   random = int(random(30,100));

   state = 1;
   home = loadImage("toxoHome.png");
   instr1 = loadImage("toxoInstr1.png");
   instr2 = loadImage("toxoInstr2.png");
  
}


void draw()
{
  background(0);
  
  textSize(30);
  text("You are Playing", 50,50);

//HOME SCREEN
  if(state == 1){
  image(home, 0, 0);
  
//reset timer
  timer =0;
    if(mousePressed){
      state = 2;  
      }
  
  }//end of state1
  
  if(state == 2){
   image(instr1, 0, 0);
   homeTimer ++;
    if(mousePressed && homeTimer > 30){
      state = 3;  
      homeTimer = 0;
      }
  
  }//end of state2
  
  println(state);
  //timer ++;
  
  if(state == 3){
   image(instr2, 0, 0);
   homeTimer ++;
    if(mousePressed && homeTimer > 30){
      state = 4;  
      }
  
  }//end of state3
  
//STATE 4 IS GAMEPLAY
 if(state == 4){
   
   timer ++;
   
  rat.draw();
  p1.draw();
  p2.draw();
  p3.draw();
  c1.draw();
  
  //noFill();
  //ellipse(rat.xPos, rat.yPos, 30, 30);
  
  if(timer == random){
    pickPlayer();
   } 
   
 //CONTROLLING RAT
  if(words[index] == "rat"){
      rat.Control();
      
      //PARASITE IS IN PLAY ONLY IF ITS NOT DEAD
        if(p1dead == false){
            p1.noControl();
        }
        if(p2dead == false){
            p2.noControl();
        }
        if(p3dead == false){
            p3.noControl();
        }
      
    //colliding with cheese makes immune true
         if(dist(c1.xPos, c1.yPos, rat.xPos, rat.yPos-5) < 45 )
           {
             immune = true;
             c1.xPos = width-100; 
             c1.yPos = random(100, height - 100);
           }
           
           //WHEN YOU EAT PARASITES
           if(immune == true){
             if(dist(p1.xPos, p1.yPos, rat.xPos, rat.yPos-5) < 30 )
             {  
              p1.dead();
              p1dead = true;
              println("dead parasite!");
              }
              if(dist(p2.xPos, p2.yPos, rat.xPos, rat.yPos-5) < 30 )
             {
              p2.dead();
              p2dead = true;
              println("dead parasite!");
              }
              if(dist(p3.xPos, p3.yPos, rat.xPos, rat.yPos-5) < 30 )
             {
              p3.dead();
              p3dead = true;
              println("dead parasite!");
              }
           }
           
           //WHEN PARASITES GET YOU
            if(immune == false){
                
              if(dist(p1.xPos, p1.yPos, rat.xPos, rat.yPos-5) < 30 )
                 {
                lives = lives -1;             
                p1.newPosition();
                }
                if(dist(p2.xPos, p2.yPos, rat.xPos, rat.yPos-5) < 30 )
                {
                lives = lives -1;              
                p2.newPosition();
                }
                if(dist(p3.xPos, p3.yPos, rat.xPos, rat.yPos-5) < 30 )
                {
                lives = lives -1;                
                p3.newPosition();
                }
  
            }
            
            if(lives == 0){
              text("You Lose!", 300,300);
            }
            
            if(p1dead == true && p2dead == true && p3dead == true){
              text("You Win!", 300,300);
            }
      } //END OF RAT PLAYER
      
 //P1 CONTROL
 //ONLY CAN CONTROL PARASITE ITS NOT DEAD
    else if(words[index] == "p1"){
      p1.Control();
      rat.noControl();
      if(p2dead == false){
            p2.noControl();
        }
        if(p3dead == false){
            p3.noControl();
        }
        
 
        if(dist(p1.xPos, p1.yPos, rat.xPos, rat.yPos-5) < 30 & immune == false)
                 {
                lives = lives -1;             
                p1.newPosition();
                }
                if(dist(p2.xPos, p2.yPos, rat.xPos, rat.yPos-5) < 30 & immune == false)
                {
                lives = lives -1;              
                p2.newPosition();
                }
                if(dist(p3.xPos, p3.yPos, rat.xPos, rat.yPos-5) < 30 & immune == false)
                {
                lives = lives -1;                
                p3.newPosition();
                }
        
   //IF PARASITE THAT IS CHOOSEN IS DEAD, CANT CONTROL IT AND PICKS PLAYER AGAIN
   //OVERWRITES RANDOM TIMER
        if(p1dead == true){
            p1.dead();
            pickPlayer();
        }
      }

//P2 CONTROL
    else if(words[index] == "p2"){
      p2.Control();
      rat.noControl();
      if(p1dead == false){
            p1.noControl();
        }
        if(p3dead == false){
            p3.noControl();
        }
        if(dist(p1.xPos, p1.yPos, rat.xPos, rat.yPos-5) < 30 & immune == false)
                 {
                lives = lives -1;             
                p1.newPosition();
                }
                if(dist(p2.xPos, p2.yPos, rat.xPos, rat.yPos-5) < 30 & immune == false)
                {
                lives = lives -1;              
                p2.newPosition();
                }
                if(dist(p3.xPos, p3.yPos, rat.xPos, rat.yPos-5) < 30 & immune == false)
                {
                lives = lives -1;                
                p3.newPosition();
                }
        if(p2dead == true){
            p2.dead();
            pickPlayer();
        }
       }
      
//P3 CONTROL
    else if(words[index] == "p3"){
      p3.Control();
      rat.noControl();
      
      if(p1dead == false){
            p1.noControl();
        }
        if(p2dead == false){
            p2.noControl();
        }
        if(dist(p1.xPos, p1.yPos, rat.xPos, rat.yPos-5) < 30 & immune == false)
                 {
                lives = lives -1;             
                p1.newPosition();
                }
                if(dist(p2.xPos, p2.yPos, rat.xPos, rat.yPos-5) < 30 & immune == false)
                {
                lives = lives -1;              
                p2.newPosition();
                }
                if(dist(p3.xPos, p3.yPos, rat.xPos, rat.yPos-5) < 30 & immune == false)
                {
                lives = lives -1;                
                p3.newPosition();
                }
        if(p3dead == true){
            p3.dead();
            pickPlayer();
        }
      }
    
    text("Lives: " + lives, width -300, 30);
    
    if(immune == true){
      immuneTimer ++;
      println(immuneTimer);
      //immune set for 10 seconds and reset
      if(immuneTimer == 300){
        immuneTimer = 0;
        immune = false;
      }
    } //IMMUNE
    
//IF IMMUNE IS TRUE EVEN WHEN PARASITES ARE IN CONTROL
           if(immune == true){
             if(dist(p1.xPos, p1.yPos, rat.xPos, rat.yPos-5) < 30 )
             {  
              p1.dead();
              p1dead = true;
              println("dead parasite!");
              }
              if(dist(p2.xPos, p2.yPos, rat.xPos, rat.yPos-5) < 30 )
             {
              p2.dead();
              p2dead = true;
              println("dead parasite!");
              }
              if(dist(p3.xPos, p3.yPos, rat.xPos, rat.yPos-5) < 30 )
             {
              p3.dead();
              p3dead = true;
              println("dead parasite!");
              }
           }
    

    //colliding with cheese makes immune true
         if(dist(c1.xPos, c1.yPos, rat.xPos, rat.yPos-5) < 45 )
           {
             immune = true;
             c1.xPos = width; 
             c1.yPos = random(100, height - 100);
           }
           
   }//end of state 4
 
}//end of draw


void pickPlayer(){
  
    index = int(random(words.length));  // Same as int(random(5))
    println(words[index]);  // Prints one of the five words
    
    //reset timer and new random value
    timer = 0;
    random = int(random(30,100));


}