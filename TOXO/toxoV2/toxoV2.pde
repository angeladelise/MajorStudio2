
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
Cheese c2;
Cheese c3;
Cheese c4;
Cheese c5;

int timer;
int timeLeft;
int timeClock;
String displayClock;
int stopClock;
boolean ratFreeze;

int score;

int random;

// Get a random element from an array
String[] words = {"rat"};
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
   score = 0;
   immuneTimer = 0;
   
   frameRate(30);
   
   rat = new Rat(1000,400);
   
   p1 = new Parasite(100, 600);
   p2 = new Parasite(600, 50);
   p3 = new Parasite(800,200);
   
   c1 = new Cheese(random(50, width-50),random(50, height- 50));
   c2 = new Cheese(random(50, width-50),random(50, height- 50));
   c3 = new Cheese(random(50, width-50),random(50, height- 50));
   c4 = new Cheese(random(50, width-50),random(50, height- 50));
   c5 = new Cheese(random(50, width-50),random(50, height- 50));
   
   //pick a random number to change player
  // random = int(random(30,100));

   state = 1;
   home = loadImage("toxoHome.png");
   instr1 = loadImage("toxoInstr1.png");
   instr2 = loadImage("toxoInstr2.png");
  
}


void draw()
{
  background(0);
  
  

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
    if(mousePressed && homeTimer > 15){
      state = 3;  
      homeTimer = 0;
      }
  
  }//end of state2
  
  println(state);
  //timer ++;
  
  if(state == 3){
   image(instr2, 0, 0);
   homeTimer ++;
    if(mousePressed && homeTimer > 15){
      state = 4;  
      }
  
  }//end of state3
  
//STATE 4 IS GAMEPLAY
 if(state == 4){   
   
   text("Score: " + score, width -300, 30);
    
   timer ++;
   
   timeLeft = 3600;
   timeLeft = timeLeft - timer;
   timeClock = timeLeft/30;
   
   if(timeClock>= 60 && timeClock < 70){
     displayClock = "1:0"+ str(timeClock-60);
   }
   else if(timeClock >= 60){
     displayClock = "1:"+ str(timeClock-60);
   }
   else{
     displayClock = "0:" + str(timeClock);
   }
   
   textSize(30);
   text("Time Left " + displayClock, 50,50);
   
 //WIN AND LOSE TEXT
   if(timeLeft == 0 && score < 50){
     fill(255,0,0);
     text("YOU LOSE", width/2, height/2);
   }
   
   if(score == 50){
     fill(0,255,0);
     text("YOU WIN", width/2,height/2);
   }
   
  
    rat.draw();
    p1.draw();
    p2.draw();
    p3.draw();
    c1.draw();
    c2.draw();
    c3.draw();
    c4.draw();
    c5.draw();
    
    
    p1.noControl();
    p2.noControl();
    p3.noControl();
  
  stroke(255,0,0);
  noFill();
  ellipse(p1.xPos, p1.yPos, 150,150);
  line(p1.xPos, p1.yPos, rat.xPos, rat.yPos-5);
  
  //RAT IS IN FULL CONTROL WHEN AWAY FROM ALL PARASITES
             if(dist(p1.xPos, p1.yPos, rat.xPos, rat.yPos-5) > 150 
             && (dist(p2.xPos, p2.yPos, rat.xPos, rat.yPos-5) > 150 ) 
             && (dist(p3.xPos, p3.yPos, rat.xPos, rat.yPos-5) > 150 ))
             {  
              rat.Control();
              }
 //WHEN PARASITES GET YOU
                
              else if(dist(p1.xPos, p1.yPos, rat.xPos, rat.yPos-5) < 30 )
                 {
                stopClock = timeClock;
                lives = lives -1;             
                p1.newPosition();             
                ratFreeze = true;
                }
               else if(dist(p2.xPos, p2.yPos, rat.xPos, rat.yPos-5) < 30 )
                {
                stopClock = timeClock;
                lives = lives -1;              
                p2.newPosition();               
                ratFreeze = true;
                }
                else if(dist(p3.xPos, p3.yPos, rat.xPos, rat.yPos-5) < 30 )
                {
                stopClock = timeClock;
                lives = lives -1;                
                p3.newPosition();               
                ratFreeze = true;
                }  
              
                else{
                rat.slowControl();
                
                   //RAT FREEZE                       
                  if(ratFreeze == true){
  
                    if(timeClock >= stopClock - 5){
                      rat.noControl();
                     }
                    else{
                    ratFreeze = false;
                      }
                    }//ratFreeze boolean
                }
              
               
  text("stopClock" + str(stopClock), width/2, height/2);
  text("timeClock" + str(timeClock), width/2 - 100, height/2- 100);

              //<>//
    //colliding with cheese increases score & takes cheese out of play
         if(dist(c1.xPos, c1.yPos, rat.xPos, rat.yPos-5) < 45 )
           {
             c1.dead();
             score = score + 10;
           }
           if(dist(c2.xPos, c2.yPos, rat.xPos, rat.yPos-5) < 45 )
           {
             c2.dead();
             score = score + 10;
           }
           if(dist(c3.xPos, c3.yPos, rat.xPos, rat.yPos-5) < 45 )
           {
             c3.dead();
             score = score + 10;
           }
           if(dist(c4.xPos, c4.yPos, rat.xPos, rat.yPos-5) < 45 )
           {
             c4.dead();
             score = score + 10;
           }
           if(dist(c5.xPos, c5.yPos, rat.xPos, rat.yPos-5) < 45 )
           {
             c5.dead();
             score = score + 10;
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

void ratFreezes(){
  int stopClock = timeClock;
  
  text("STOP", width/2, height/2);
  
  if(timeClock < stopClock + 5){
    rat.noControl();
  }
   else{
    rat.Control();
   }

}