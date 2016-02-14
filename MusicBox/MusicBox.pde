int state;
PImage image;

import ddf.minim.*;
Minim minim;
AudioPlayer F;
AudioPlayer A;
AudioPlayer C;
AudioPlayer E_up;

AudioPlayer F_letter;
AudioPlayer A_letter;
AudioPlayer C_letter;
AudioPlayer E_letter;

int timer;

int score = 0;
int lose = 0;

int x = 0;

int test;
int timerTest;

boolean nextTest;
boolean clicked = false;

void setup(){
  size(840, 600);
  state = 1;
  image = loadImage("music_game_basic.png");
  
   // setup player
  minim = new Minim(this);
  F = minim.loadFile("F_all.wav", 1024);
 // F_letter = minim.loadFile("F_letter.wav", 1024);
 // F.loop(); 
  A = minim.loadFile("A_all.wav", 1024);
 // A_letter = minim.loadFile("A_letter.wav", 1024);
  //A.loop(); 
  C = minim.loadFile("C_all.wav", 1024);
 // C_letter = minim.loadFile("C_letter.wav", 1024);
  //C.loop(); 
 // E_letter = minim.loadFile("E_letter.wav", 1024);
  E_up = minim.loadFile("E_up_all.wav", 1024);

 // E_up.loop(); 
}


void draw(){
  
  
  if (state == 1){
    text("Click to Play", 300, 100);
    if (mousePressed == true){
      state = 2;
    }
  }
  
  if (state == 2){
      background(255);
      image(image, 15, 130, 800, 300);
      
      timer++;
      strokeWeight(4);
      //each note plays for 80 frames and has 20 frames inbetween each one
      
      //red F
      if (timer >20 && timer < 100){
      fill(255,0,0);
      ellipse(270,330,30,30);
      F.play();
      textSize(100);
      text("F", width/2-50, height-50);
      }
      
    
      //orange A
      if(timer>120 && timer < 200){
      fill(249,145,43);
      ellipse(390,297,30,30);
      A.play();
      text("A", width/2-50, height-50);
      }
        
        
      //yellow C
      if(timer>220 && timer < 300){
      fill(255,215,90);
      ellipse(510,263,30,30);
      C.play();
      text("C", width/2-50, height-50);
      }
        
      //green E
      if(timer>320 && timer < 400){
      fill(42,235,77);
      ellipse(630,230,30,30);
      E_up.play();
      text("E", width/2-50, height-50);
      }
      
      if(timer > 420){
        text("Click to Play", 300, 100);
        if (mousePressed == true){
          state = 3;
          test = 0;
          lose = 0;
          timerTest = timer;
          }
        }
  }//end of state 2
  
  //GAME STATE
  
  if (state == 3){
      //red F
      //if (timer >420){
      background(255);
      image(image, 15, 130, 800, 300);
      fill(255);
      strokeWeight(4);
      timer ++;
      
      if (timer > timerTest + 30){
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
        
      //MUSIC PLAYING
      //for A start at 480, play 3 times before give answer
      //TEST FOR A
     if(timer > 500){
     for(int i =0; i< 160; i= i +80){
       if(A.isPlaying() == false){
        A.rewind();
        A.play();
        }
      }//end of int loop 
 
  
      } // end of A TEST
     }//end of timetest
    }//END OF GAME STATE 3
   
      
      
     
      //end of state 3
      
     //TEST FOR E STATE 4
    if(state == 4){
      background(255);
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
    if(timer > 600){
       for(int i =0; i< 160; i= i +80){
         if(E_up.isPlaying() == false){
          E_up.rewind();
          E_up.play();
           }
          }
         }
       } // end of E
       
       
       
     //STATE 5 C 
     if (state == 5){
      background(255);
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
     if(timer > 620){
       for(int i =0; i< 160; i= i +80){
         if(C.isPlaying() == false){
          C.rewind();
          C.play();
         }
    
       }//end of int loop 
       
       } // end of C TEST
    }//END OF GAME STATE 5
      
     //STATE  6 F
     if (state == 6){
      background(255);
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
     if(timer > 700){
       for(int i =0; i< 160; i= i +80){
         if(F.isPlaying() == false){
          F.rewind();
          F.play();
         }
    
       }//end of int loop 
       
       } // end of F TEST
    }//END OF GAME STATE 6


   //STATE  7 C
     if (state == 7){
      background(255);
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
     if(timer > 700){
       for(int i =0; i< 160; i= i +80){
         if(C.isPlaying() == false){
          C.rewind();
          C.play();
         }
    
       }//end of int loop 
       
       } // end of C TEST
    }//END OF GAME STATE 7
    
     //TEST FOR E STATE 8
    if(state == 8){
      background(255);
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
    if(timer > 800){
       for(int i =0; i< 160; i= i +80){
         if(E_up.isPlaying() == false){
          E_up.rewind();
          E_up.play();
           }
          }
         }
       } // end of E
       
       if (state == 9){
      //red F
      //if (timer >420){
      background(255);
      image(image, 15, 130, 800, 300);
      fill(255);
      strokeWeight(4);
      timer ++;
      
      if (timer > timerTest + 30){
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
        
      //MUSIC PLAYING
      //for A start at 480, play 3 times before give answer
      //TEST FOR A
     if(timer > 500){
     for(int i =0; i< 160; i= i +80){
       if(A.isPlaying() == false){
        A.rewind();
        A.play();
        }
      }//end of int loop 
 
  
      } // end of A TEST
     }//end of timetest
    }//END OF GAME STATE A
    
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

      fill(0);
      text(str(score), 700, 50);

  }
  
  void mouseClicked(){
  //clicked = true;
  
    //A Button
    if (mouseX > 375  && mouseX < 405 && mouseY > 282 && mouseY < 312 && state == 3 && timer > timerTest+60){
        score += 1;
        state = 4;
        timerTest = timer;
        }
        else if ((mouseX < 375  || mouseX > 405) && (mouseY < 282 || mouseY > 312) && state == 3 && timer > timerTest+60){
        lose += 1;
        state = 4;
        timerTest = timer;
        }
        
    //E button
        if (mouseX > 615  && mouseX < 645 && mouseY > 215 && mouseY < 245 && state == 4 && timer > timerTest+60){
          score += 1;
          state = 5;
          timerTest = timer;

        }
        else if (state == 4 && timer > timerTest+60){
          lose += 1;
          state = 5;
          timerTest = timer;

        }
      
      
      //C button
       if(mouseX > 495  && mouseX < 525 && mouseY > 248 && mouseY < 278 && state == 5 && timer > timerTest+60){
         score += 1;
         state = 6;
         timerTest = timer;

       }
      else if ((mouseX > 495  || mouseX < 525) && (mouseY > 248 || mouseY < 278) && state == 5 && timer > timerTest+60){
         lose += 1;
         state = 6;
         timerTest = timer;

      }
      
      //F button
      if (mouseX > 255 && mouseX < 285 && mouseY > 315 && mouseY < 345 && state == 6 && timer > timerTest+60){
       score += 1;
       state = 7;
       timerTest = timer;

      }
      else if ((mouseX < 255 || mouseX > 285) && (mouseY > 315 || mouseY < 345) && state == 6 && timer > timerTest+60){
       lose += 1;
       state =7;
       timerTest = timer;

      }
      
       //C button
       if(mouseX > 495  && mouseX < 525 && mouseY > 248 && mouseY < 278 && state == 7 && timer > timerTest+60){
         score += 1;
         state = 8;
         timerTest = timer;

       }
      else if ((mouseX > 495  || mouseX < 525) && (mouseY > 248 || mouseY < 278) && state == 7 && timer > timerTest+60){
         lose += 1;
         state = 8;
         timerTest = timer;

      }
      
       //E button
        if (mouseX > 615  && mouseX < 645 && mouseY > 215 && mouseY < 245 && state == 8 && timer > timerTest+60){
          score += 1;
          state = 9;
          timerTest = timer;

        }
        else if (state == 8 && timer > timerTest+60){
          lose += 1;
          state = 9;
          timerTest = timer;

        }
        
        //A button
        if (mouseX > 375  && mouseX < 405 && mouseY > 282 && mouseY < 312 && state == 9 && timer > timerTest+60){
        score += 1;
        state = 10;
        timerTest = timer;
        }
        
        else if ((mouseX < 375  || mouseX > 405) && (mouseY < 282 || mouseY > 312) && state == 9 && timer > timerTest+60){
        lose += 1;
        state = 10;
        timerTest = timer;
        }
      
  }