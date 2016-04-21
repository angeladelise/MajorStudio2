
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

Cat cat;
Boolean catCollide;

int timer;
int timeLeft;
int timeClock;
String displayClock;
int stopClock;
boolean ratFreeze;
int resetTimer;

int freezeTimer;
int hitTimer;

int score;

int random;

// Get a random element from an array
String[] words = {"up", "down", "left", "right"};
int index;

int lives = 3;

int state;

PImage home;
PImage instr1;
PImage instr2;
PImage instr3;

PImage lose;
PImage win;

int homeTimer = 0;

int mazeX;
int mazeY;

void setup()
 {
   size (1000, 700);
   timer = 0;
   score = 0;
   immuneTimer = 0;
   resetTimer = 0;
   
   frameRate(30);
   
   rat = new Rat(0,400);
   
   p1 = new Parasite(100, 600);
   p2 = new Parasite(600, 50);
   p3 = new Parasite(800,200);
   
   c1 = new Cheese(random(50, width-50),random(50, height- 50));
   c2 = new Cheese(random(50, width-50),random(50, height- 50));
   c3 = new Cheese(random(50, width-50),random(50, height- 50));
   c4 = new Cheese(random(50, width-50),random(50, height- 50));
   c5 = new Cheese(random(50, width-50),random(50, height- 50));
   
   cat = new Cat(width/2,1000);
   catCollide = false;
   
   //randomly change when parasites follow
  random = int(random(90,120));

   state = 1;
   home = loadImage("toxoHome.png");
   instr1 = loadImage("toxoInstr1.png");
   instr2 = loadImage("toxoInstr2.png");
   instr3 = loadImage("toxoInstr3.png");
   win = loadImage("win.png");
   lose = loadImage("lose.png");
   
 
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
      homeTimer = 0;
      }
  
  }//end of state3
  
  if(state == 4){
   image(instr3, 0, 0);
   homeTimer ++;
    if(mousePressed && homeTimer > 15){
      state = 5;  
      }
  
  }//end of state 4
  
//STATE 5 IS GAMEPLAY
 if(state == 5){   
 
  println(mouseX, mouseY);
   rat.collide();
   p1.collide();
   p2.collide();
   p3.collide();
   c1.collide();
   cat.collide();
   
   if(resetTimer == random){
    catControl();
   } 
   
   if(words[index] == "up"){
    cat.up();
      if (cat.yPos <= 30){
        catControl();
      }
    }
    else if(words[index] == "down"){
    cat.down();
    if (cat.yPos >= height-30){
        catControl();
      }
    }
    if(words[index] == "left"){
    cat.left();
    if (cat.xPos <= 30){
        catControl();
      }
    }
    if(words[index] == "right"){
    cat.right();
    if (cat.xPos <= width-15){
        catControl();
      }
    } //<>//
   
//MAZE LAYOUT
   noFill();
   stroke(255);

   
   rect(0, 0+60, 180, 30);
   rect(width-180, 0+60, 180, 30);
   
   rect(0, 300+60, 180, 30);
   rect(width-180, 300+60, 180, 30);
   
   rect(0, 600+60, 180, 30);
   rect(width-180, 600+60, 180, 30);
   
//VERTICAL RECTANGLES
for(int i = 200; i < width - 200; i ++){
     if(i % 300 == 0){
       rect(i+40, 0, 30, 200);
       rect(i+40, height-180, 30, 200);
     }
   }
   
//SMALLER HORIZONTAL BOXES
 for(int i = 10; i < height - 150; i ++){
     if(i % 150 == 0 && i != 300){
       rect(100, i+30, 150, 30);
      rect(width-250, i+30, 150, 30);
     }
   }
   
//SMALLER VERT BOXES
for(int i = 300; i < width - 200; i ++){
     if(i % 450 == 0){
       rect(i+40, 120, 30, 150);
       rect(i+40, height-300, 30, 150);
     }
   }
   
//SMALLER HORIZONTAL MIDDLE
 for(int i = 300; i < height - 300; i ++){
     if(i % 300 == 0){
       rect(250, i, 150, 30);
       rect(width-400, i, 150, 30);
     }
   }
   
   
//RAT COLLIDING WITH MAZE
if(rat.xPos < 180 && rat.xPos>0 && rat.yPos >60 && rat.yPos < 90){
  rat.xPos = 0;
  rat.yPos = 90;
}


   
   text("Score: " + score, width -150, 30);
    
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
   text("Time Left " + displayClock, 20,30);
   
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
    cat.draw();
    
    
    p1.noControl();
    p2.noControl();
    p3.noControl();
    
    //cat.followRat();
    cat.wander();
  
  stroke(255,0,0);
  noFill();
  //ellipse(p1.xPos, p1.yPos, 150,150);
  //line(p1.xPos, p1.yPos, rat.xPos, rat.yPos-5);
  
  //RAT IS IN FULL CONTROL WHEN AWAY FROM ALL PARASITES
            if(ratFreeze == true){
                rat.noControl();
                }
  
             else if(dist(p1.xPos, p1.yPos, rat.xPos, rat.yPos-5) > 150 
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
                hitTimer = hitTimer + 90;
                }
               else if(dist(p2.xPos, p2.yPos, rat.xPos, rat.yPos-5) < 30 )
                {
                stopClock = timeClock;
                lives = lives -1;              
                p2.newPosition();               
                ratFreeze = true;
                hitTimer = hitTimer + 90;
                }
                else if(dist(p3.xPos, p3.yPos, rat.xPos, rat.yPos-5) < 30 )
                {
                stopClock = timeClock;
                lives = lives -1;                
                p3.newPosition();               
                ratFreeze = true;
                hitTimer = hitTimer + 90;
                }  
                            
                else{
                rat.slowControl();
                
                }
                            
                
    //RAT FREEZE
    if(ratFreeze == true){
      freezeTimer ++;
      if(freezeTimer > 0 && freezeTimer < hitTimer){
        rat.zombieControl();
        //ellipse (50, height- 150, 50, 50);
        //text(freezeTimer, 50, height -100);
        //text(hitTimer, 50, height -200);
        
         if(dist(p1.xPos, p1.yPos, rat.xPos, rat.yPos-5) < 30 )
                 {
                stopClock = timeClock;
                lives = lives -1;             
                p1.newPosition();             
                ratFreeze = true;
                hitTimer = hitTimer + 90;
                }
         else if(dist(p2.xPos, p2.yPos, rat.xPos, rat.yPos-5) < 30 )
                {
                stopClock = timeClock;
                lives = lives -1;              
                p2.newPosition();               
                ratFreeze = true;
                hitTimer = hitTimer + 90;
                }
         else if(dist(p3.xPos, p3.yPos, rat.xPos, rat.yPos-5) < 30 )
                {
                stopClock = timeClock;
                lives = lives -1;                
                p3.newPosition();               
                ratFreeze = true;
                hitTimer = hitTimer + 90;
                }        
        
      }
      else{
        freezeTimer = 0;
        hitTimer = 0;
        ratFreeze = false;
      }
    }
              
               
  //text("stopClock" + str(stopClock), width/2, height/2);
  //text("timeClock" + str(timeClock), width/2 - 100, height/2- 100);

             
    //colliding with cheese increases score & takes cheese out of play //<>//
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

        
       
        
    if(dist(cat.xPos, cat.yPos, rat.xPos, rat.yPos-5) < 30 )
       {
       catCollide = true;
       }
        
        if(timeClock == 0 || catCollide == true){
         //lose state
        state = 6;
        }
        
        if(score == 50){
        //win state
        state = 7;
        }

           
   }//end of state 5
   
 //LOSE STATE
   if(state == 6){
     image(lose, 0, 0);
     if(mousePressed){
     setup();
     state = 1;
     }
   
   }
   
   
//WIN STATE
  if(state == 7){
    image(win, 0, 0);
    if(mousePressed){
     setup();
     state = 1;
     }
  
  }
 
}//end of draw


void catControl(){
    index = int(random(words.length));  // Same as int(random(5))
    println(words[index]);  // Prints one of the five words
    
    
    
    //reset timer and new random value
    resetTimer = 0;
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


void collision(int x, int y, float ratxPos, float ratyPos){
  ratxPos = rat.xPos;
  ratyPos = rat.yPos;
  
  

}