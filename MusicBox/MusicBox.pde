int state;
PImage image;
PImage home;
PImage background;
PImage letterF;
PImage letterA;
PImage letterC;
PImage letterE;
PImage click;
PImage tryAgain;
PImage goodJob;
PImage title;

PFont font;


import ddf.minim.*;
Minim minim;
AudioPlayer F;
AudioPlayer A;
AudioPlayer C;
AudioPlayer E_up;

AudioPlayer right;
AudioPlayer wrong;

int timer;

int score = 0;
int lose = 0;

int x = 0;

int test;
int timerTest;

boolean nextTest;
boolean clicked = false;
boolean loseState;
boolean winState;

void setup(){
  size(840, 600);
  state = 1;
  image = loadImage("music_game_board2.png");
  home = loadImage("MusicBoxHome.jpg");
  background = loadImage("MusicBoxBackground.png");
  letterF = loadImage("LetterF.png");
  letterA = loadImage("LetterA.png");
  letterC = loadImage("LetterC.png");
  letterE = loadImage("LetterE.png");
  
   click = loadImage("ClickToPlay.png");
   tryAgain = loadImage("tryAgain.png");
   goodJob = loadImage("goodJob.png");
   title = loadImage("MusicBoxTitle.png");
    
   // setup player
  minim = new Minim(this);
  F = minim.loadFile("F_all.wav", 1024);
  A = minim.loadFile("A_all.wav", 1024);
  C = minim.loadFile("C_all.wav", 1024);
  E_up = minim.loadFile("E_up_all.wav", 1024); 
  
  right = minim.loadFile("right.mp3");
  wrong = minim.loadFile("wrong.mp3");
}


void draw(){
  
  
  if (state == 1){
    //text("Click to Play", 300, 100);
    image(home, 0, 0);

    if (mousePressed == true){
      state = 2;
    }
  }
  
  if (state == 2){
      image(background, 0, 0);
      image(title, 0, -10);
      image(image, 15, 130, 800, 300);
      //textFont(font, 100);
      timer++;
      strokeWeight(4);
      //each note plays for 80 frames and has 20 frames inbetween each one
      
      //red F
      if (timer >20 && timer < 100){
      fill(255,0,0);
      ellipse(270,330,30,30);
      F.play();
     // textSize(100);
      //text("F", width/2-50, height-50);
      image(letterF, 0,50);
      }
      
    
      //orange A
      if(timer>120 && timer < 200){
      fill(249,145,43);
      ellipse(390,297,30,30);
      A.play();
      //text("A", width/2-50, height-50);
      image(letterA, 0,50);

      }
        
        
      //yellow C
      if(timer>220 && timer < 300){
      fill(255,215,90);
      ellipse(510,263,30,30);
      C.play();
      //text("C", width/2-50, height-50);
      image(letterC, 0,50);

      }
        
      //green E
      if(timer>320 && timer < 400){
      fill(42,235,77);
      ellipse(630,230,30,30);
      E_up.play();
     // text("E", width/2-50, height-50);
      image(letterE, 0,50);

      }
      
      if(timer > 420){
        //text("Click to Play", 300, 100);
        image(click, 0, 70);
        if (mousePressed == true){
          state = 3;
          test = 0;
          lose = 0;
          timerTest = timer;
          }
        }
  }//end of state 2
  
  //GAME STATE
  
 //TEST FOR A STATE 3
    if(state == 3){
      image(background, 0, 0);
      image(title, 0, -10);
      image(image, 15, 130, 800, 300);
      fill(255);
      strokeWeight(4);
      timer ++;
      
      if (mouseX > 255 && mouseX < 285 && mouseY > 315 && mouseY < 345){
      stroke(255,0,0);
      }
      else{
      stroke(0);
      }     
       ellipse(270,330,30,30);
     
      //orange A
      fill(255);
      if (mouseX > 375  && mouseX < 405 && mouseY > 282 && mouseY < 312){
      stroke(249,145,43);
      }      
      else{
      stroke(0);
      }     
      ellipse(390,297,30,30);
      
      //yellow C
      fill(255);
      if (mouseX > 495  && mouseX < 525 && mouseY > 248 && mouseY < 278){
      stroke(242,236,55);
      }     
      else{
      stroke(0);
      }
      ellipse(510,263,30,30);
        
      //green E
      fill(255);
      if (mouseX > 615  && mouseX < 645 && mouseY > 215 && mouseY < 245){
      stroke(0,255,0);
      }     
      else{
      stroke(0);
      }
      ellipse(630,230,30,30);
        
    //MUSIC PLAYING FOR A
    if(timer > 500 && winState == false && loseState == false){
       for(int i =0; i< 160; i= i +80){
         if(A.isPlaying() == false){
          A.rewind();
          A.play();
           }
          }
         }
         
     if(winState == true){
        if(timer - timerTest < 120){
       image(goodJob, 0, 70);
       }
       else{
         winState = false;
         state = 4;
           }
         }
         
    if(loseState == true){
     if(timer - timerTest < 120){
       image(tryAgain, 0, 70);
       }
       else{
         loseState = false;
           }
         }
       } // end of A state 3
   
     
      
     //TEST FOR E STATE 4
    if(state == 4){
      image(background, 0, 0);
      image(title, 0, -10);
      image(image, 15, 130, 800, 300);
      fill(255);
      strokeWeight(4);
      timer ++;
      
      if (mouseX > 255 && mouseX < 285 && mouseY > 315 && mouseY < 345){
      stroke(255,0,0);
      }
      else{
      stroke(0);
      }     
       ellipse(270,330,30,30);
     
      //orange A
      fill(255);
      if (mouseX > 375  && mouseX < 405 && mouseY > 282 && mouseY < 312){
      stroke(249,145,43);
      }      
      else{
      stroke(0);
      }     
      ellipse(390,297,30,30);
      
      //yellow C
      fill(255);
      if (mouseX > 495  && mouseX < 525 && mouseY > 248 && mouseY < 278){
      stroke(242,236,55);
      }     
      else{
      stroke(0);
      }
      ellipse(510,263,30,30);
        
      //green E
      fill(255);
      if (mouseX > 615  && mouseX < 645 && mouseY > 215 && mouseY < 245){
      stroke(0,255,0);
      }     
      else{
      stroke(0);
      }
      ellipse(630,230,30,30);
        
    //MUSIC PLAYING FOR E
    if(timer > 600 && winState == false && loseState == false){
       for(int i =0; i< 160; i= i +80){
         if(E_up.isPlaying() == false){
          E_up.rewind();
          E_up.play();
           }
          }
         }
         
     if(winState == true){
        if(timer - timerTest < 120){
       image(goodJob, 0, 70);
       }
       else{
         winState = false;
         state = 5;
           }
         }
         
     if(loseState == true){
     if(timer - timerTest < 120){
       image(tryAgain, 0, 70);
       }
       else{
         loseState = false;
           }
         }
       } // end of E state 4
       
       
       
     //STATE 5 C 
     if (state == 5){
      image(background, 0, 0);
      image(title, 0, -10);
      image(image, 15, 130, 800, 300);
      fill(255);
      strokeWeight(4);
      timer ++;
      
      if (mouseX > 255 && mouseX < 285 && mouseY > 315 && mouseY < 345){
      stroke(255,0,0);
      }
      else{
      stroke(0);
      }     
       ellipse(270,330,30,30);
     
      //orange A
      fill(255);
      if (mouseX > 375  && mouseX < 405 && mouseY > 282 && mouseY < 312){
      stroke(249,145,43);
      }      
      else{
      stroke(0);
      }     
      ellipse(390,297,30,30);
      
      //yellow C
      fill(255);
      if (mouseX > 495  && mouseX < 525 && mouseY > 248 && mouseY < 278){
      stroke(242,236,55);
      }     
      else{
      stroke(0);
      }
      ellipse(510,263,30,30);
        
      //green E
      fill(255);
      if (mouseX > 615  && mouseX < 645 && mouseY > 215 && mouseY < 245){
      stroke(0,255,0);
      }     
      else{
      stroke(0);
      }
      ellipse(630,230,30,30);
    
    println(timer);
    
      //MUSIC PLAYING
      //TEST FOR C //<>//
     if(timer > 620 && winState == false && loseState == false){
       for(int i =0; i< 160; i= i +80){
         if(C.isPlaying() == false){
          C.rewind();
          C.play();
         }
    
       }//end of int loop 
       
       } // end of C TEST
       
       if(winState == true){
     if(timer - timerTest < 120){
       image(goodJob, 0, 70);
       }
       else{
         winState = false;
         state = 6;
           }
         }
       
    if(loseState == true){
     if(timer - timerTest < 120){
       image(tryAgain, 0, 70);
       }
       else{
         loseState = false;
           }
         }
    }//END OF GAME STATE 5
      
     //STATE  6 F
     if (state == 6){
      image(background, 0, 0);
      image(title, 0, -10);
      image(image, 15, 130, 800, 300);
      fill(255);
      strokeWeight(4);
      test = 1;
      timer ++;
      
      //red F
      if (mouseX > 255 && mouseX < 285 && mouseY > 315 && mouseY < 345){
      stroke(255,0,0);
      }
      else{
      stroke(0);
      }     
       ellipse(270,330,30,30);
     
      //orange A
      fill(255);
      if (mouseX > 375  && mouseX < 405 && mouseY > 282 && mouseY < 312){
      stroke(249,145,43);
      }      
      else{
      stroke(0);
      }     
      ellipse(390,297,30,30);
      
      //yellow C
      fill(255);
      if (mouseX > 495  && mouseX < 525 && mouseY > 248 && mouseY < 278){
      stroke(242,236,55);
      }     
      else{
      stroke(0);
      }
      ellipse(510,263,30,30);
        
      //green E
      fill(255);
      if (mouseX > 615  && mouseX < 645 && mouseY > 215 && mouseY < 245){
      stroke(0,255,0);
      }     
      else{
      stroke(0);
      }
      ellipse(630,230,30,30);
    
    println(timer);
    
      //MUSIC PLAYING
      //TEST FOR F
     if(timer > 700&& winState == false && loseState == false){
       for(int i =0; i< 160; i= i +80){
         if(F.isPlaying() == false){
          F.rewind();
          F.play();
         }
    
       }//end of int loop 
       
       } // end of F TEST
       
       if(winState == true){
     if(timer - timerTest < 120){
       image(goodJob, 0, 70);
       }
       else{
         winState = false;
         state = 7;
           }
         }
       
    if(loseState == true){
     if(timer - timerTest < 120){
       image(tryAgain, 0, 70);
       }
       else{
         loseState = false;
           }
         }
    }//END OF GAME STATE 6


   //STATE  7 C
     if (state == 7){
      image(background, 0, 0);
      image(title, 0, -10);
      image(image, 15, 130, 800, 300);
      fill(255);
      strokeWeight(4);
      test = 1;
      timer ++;
      
      //red F
      if (mouseX > 255 && mouseX < 285 && mouseY > 315 && mouseY < 345){
      stroke(255,0,0);
      }
      else{
      stroke(0);
      }     
       ellipse(270,330,30,30);
     
      //orange A
      fill(255);
      if (mouseX > 375  && mouseX < 405 && mouseY > 282 && mouseY < 312){
      stroke(249,145,43);
      }      
      else{
      stroke(0);
      }     
      ellipse(390,297,30,30);
      
      //yellow C
      fill(255);
      if (mouseX > 495  && mouseX < 525 && mouseY > 248 && mouseY < 278){
      stroke(242,236,55);
      }     
      else{
      stroke(0);
      }
      ellipse(510,263,30,30);
        
      //green E
      fill(255);
      if (mouseX > 615  && mouseX < 645 && mouseY > 215 && mouseY < 245){
      stroke(0,255,0);
      }     
      else{
      stroke(0);
      }
      ellipse(630,230,30,30);
    
    println(timer);
    
      //MUSIC PLAYING
      //TEST FOR C
     if(timer > 700 && winState == false && loseState == false){
       for(int i =0; i< 160; i= i +80){
         if(C.isPlaying() == false){
          C.rewind();
          C.play();
         }
    
       }//end of int loop 
       
       } // end of C TEST
       
       if(winState == true){
     if(timer - timerTest < 120){
       image(goodJob, 0, 70);
       }
       else{
         winState = false;
         state = 8;
           }
         }
       
    if(loseState == true){
     if(timer - timerTest < 120){
       image(tryAgain, 0, 70);
       }
       else{
         loseState = false;
           }
         }
    }//END OF GAME STATE 7
    
     //TEST FOR E STATE 8
    if(state == 8){
      image(background, 0, 0);
      image(title, 0, -10);
      image(image, 15, 130, 800, 300);
      fill(255);
      strokeWeight(4);
      timer ++;
      
      if (mouseX > 255 && mouseX < 285 && mouseY > 315 && mouseY < 345){
      stroke(255,0,0);
      }
      else{
      stroke(0);
      }     
       ellipse(270,330,30,30);
     
      //orange A
      fill(255);
      if (mouseX > 375  && mouseX < 405 && mouseY > 282 && mouseY < 312){
      stroke(249,145,43);
      }      
      else{
      stroke(0);
      }     
      ellipse(390,297,30,30);
      
      //yellow C
      fill(255);
      if (mouseX > 495  && mouseX < 525 && mouseY > 248 && mouseY < 278){
      stroke(242,236,55);
      }     
      else{
      stroke(0);
      }
      ellipse(510,263,30,30);
        
      //green E
      fill(255);
      if (mouseX > 615  && mouseX < 645 && mouseY > 215 && mouseY < 245){
      stroke(0,255,0);
      }     
      else{
      stroke(0);
      }
      ellipse(630,230,30,30);
        
    //MUSIC PLAYING FOR E
    if(timer > 800 && winState == false && loseState == false){
       for(int i =0; i< 160; i= i +80){
         if(E_up.isPlaying() == false){
          E_up.rewind();
          E_up.play();
           }
          }
         }
         
      if(winState == true){
     if(timer - timerTest < 120){
       image(goodJob, 0, 70);
       }
       else{
         winState = false;
         state = 9;
           }
         }
         
    if(loseState == true){
     if(timer - timerTest < 120){
       image(tryAgain, 0, 70);
       }
       else{
         loseState = false;
           }
         }
         
       } // end of E
       
     //TEST FOR A STATE 9
    if(state == 9){
      image(background, 0, 0);
      image(title, 0, -10);
      image(image, 15, 130, 800, 300);
      fill(255);
      strokeWeight(4);
      timer ++;
      
      if (mouseX > 255 && mouseX < 285 && mouseY > 315 && mouseY < 345){
      stroke(255,0,0);
      }
      else{
      stroke(0);
      }     
       ellipse(270,330,30,30);
     
      //orange A
      fill(255);
      if (mouseX > 375  && mouseX < 405 && mouseY > 282 && mouseY < 312){
      stroke(249,145,43);
      }      
      else{
      stroke(0);
      }     
      ellipse(390,297,30,30);
      
      //yellow C
      fill(255);
      if (mouseX > 495  && mouseX < 525 && mouseY > 248 && mouseY < 278){
      stroke(242,236,55);
      }     
      else{
      stroke(0);
      }
      ellipse(510,263,30,30);
        
      //green E
      fill(255);
      if (mouseX > 615  && mouseX < 645 && mouseY > 215 && mouseY < 245){
      stroke(0,255,0);
      }     
      else{
      stroke(0);
      }
      ellipse(630,230,30,30);
        
    //MUSIC PLAYING FOR A
    if(timer > 500 && winState == false && loseState == false){
       for(int i =0; i< 160; i= i +80){
         if(A.isPlaying() == false){
          A.rewind();
          A.play();
           }
          }
         }
         
     if(winState == true){
        if(timer - timerTest < 120){
       image(goodJob, 0, 70);
       }
       else{
         winState = false;
         state = 4;
           }
         }
         
      if(loseState == true){
       if(timer - timerTest < 120){
       image(tryAgain, 0, 70);
       }
       else{
         loseState = false;
           }
         }
       } // end of A state 9 A
    
    if (state == 10){
      text("You won Level 1", 300, 100);
    if (mousePressed == true){
      //state = 2;
      }
      
    }//end of state 10

      println("score" + str(score));
      println("lose" + str(lose));
      println("state" + str(state));
      println("timeTest" + str(timerTest));
      println("time" + str(timer));


     // fill(0);
     // text(str(score), 700, 50);

  }
  
  void mouseClicked(){
  
    //A Button
    if (mouseX > 375  && mouseX < 405 && mouseY > 282 && mouseY < 312 && state == 3 && timer > timerTest+60){
        score += 1;
        //state = 4;
        timerTest = timer;
        right.play();
        right.rewind();
        winState = true;
        loseState = false;

        }
        else if (state == 3 && timer > timerTest+60){
        lose += 1;
        timerTest = timer;
     
        wrong.play();
        wrong.rewind();
        loseState = true;
        winState = false;

        }
        
    //E button
        if (mouseX > 615  && mouseX < 645 && mouseY > 215 && mouseY < 245 && state == 4 && timer > timerTest+60){
          score += 1;
         // state = 5;
          timerTest = timer;
          right.play();
          right.rewind();
          winState = true;
          loseState = false;

        }
        else if (state == 4 && timer > timerTest+60){
        lose += 1;
        timerTest = timer;
     
        wrong.play();
        wrong.rewind();
        loseState = true;
        winState = false;
        }
      
      
      //C button
       if(mouseX > 495  && mouseX < 525 && mouseY > 248 && mouseY < 278 && state == 5 && timer > timerTest+60){
         score += 1;
         //state = 6;
         timerTest = timer;
         right.play();
         right.rewind();
         winState = true;
         loseState = false;

       }
      else if ((mouseX > 495  || mouseX < 525) && (mouseY > 248 || mouseY < 278) && state == 5 && timer > timerTest+60){
         lose += 1;
        timerTest = timer;
     
        wrong.play();
        wrong.rewind();
        loseState = true;
        winState = false;
      }
      
      //F button
      if (mouseX > 255 && mouseX < 285 && mouseY > 315 && mouseY < 345 && state == 6 && timer > timerTest+60){
       score += 1;
      // state = 7;
       timerTest = timer;
       right.play();
       right.rewind();
       winState = true;
       loseState = false;

      }
      else if ((mouseX < 255 || mouseX > 285) && (mouseY > 315 || mouseY < 345) && state == 6 && timer > timerTest+60){
       lose += 1;
        timerTest = timer;
     
        wrong.play();
        wrong.rewind();
        loseState = true;
        winState = false;
      }
      
       //C button
       if(mouseX > 495  && mouseX < 525 && mouseY > 248 && mouseY < 278 && state == 7 && timer > timerTest+60){
         score += 1;
         //state = 8;
         timerTest = timer;
        right.play();
        right.rewind();
        winState = true;
        loseState = false;

       }
      else if ((mouseX > 495  || mouseX < 525) && (mouseY > 248 || mouseY < 278) && state == 7 && timer > timerTest+60){
         lose += 1;
        timerTest = timer;
     
        wrong.play();
        wrong.rewind();
        loseState = true;
        winState = false;
      }
      
       //E button
        if (mouseX > 615  && mouseX < 645 && mouseY > 215 && mouseY < 245 && state == 8 && timer > timerTest+60){
          score += 1;
          //state = 9;
          timerTest = timer;
          right.play();
          right.rewind();
          winState = true;
          loseState = false;

        }
        else if (state == 8 && timer > timerTest+60){
          lose += 1;
        timerTest = timer;
     
        wrong.play();
        wrong.rewind();
        loseState = true;
        winState = false;
        }
        
        //A button
        if (mouseX > 375  && mouseX < 405 && mouseY > 282 && mouseY < 312 && state == 9 && timer > timerTest+60){
        score += 1;
        //state = 10;
        timerTest = timer;
        right.play();
        right.rewind();
        winState = true;
        loseState = false;

        }
        
        else if (state == 9 && timer > timerTest+60){
        lose += 1;
        timerTest = timer;
     
        wrong.play();
        wrong.rewind();
        loseState = true;
        winState = false;
        }
        
      
  }
  
  
  
  