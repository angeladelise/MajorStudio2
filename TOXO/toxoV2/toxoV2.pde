
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
   random = int(random(30,100));

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
   
   
   text("Score: " + score, width -300, 30);
    
   timer ++;
   
   timeLeft = 3600;
   timeLeft = timeLeft - timer;
   timeClock = timeLeft/30;
   
   textSize(30);
   text("Time Left:" + timeClock, 50,50);
   
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
      
    //colliding with cheese increases score & takes cheese out of play
         if(dist(c1.xPos, c1.yPos, rat.xPos, rat.yPos-5) < 45 )
           {
             rat.Control();
             c1.dead();
             score = score + 10;
           }
           if(dist(c2.xPos, c2.yPos, rat.xPos, rat.yPos-5) < 45 )
           {
             rat.Control();
             c2.dead();
             score = score + 10;
           }
           if(dist(c3.xPos, c3.yPos, rat.xPos, rat.yPos-5) < 45 )
           {
             rat.Control();
             c3.dead();
             score = score + 10;
           }
           if(dist(c4.xPos, c4.yPos, rat.xPos, rat.yPos-5) < 45 )
           {
             rat.Control();
             c4.dead();
             score = score + 10;
           }
           if(dist(c5.xPos, c5.yPos, rat.xPos, rat.yPos-5) < 45 )
           {
             rat.Control();
             c5.dead();
             score = score + 10;
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