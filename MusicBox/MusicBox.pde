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


void setup(){
  size(840, 600);
  state = 2;
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
    text("Home", 300, 100);
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
  }
  
 
  //orange A
  if(timer>120 && timer < 200){
  fill(249,145,43);
  ellipse(390,297,30,30);
  A.play();
  }
  
  //yellow C
  if(timer>220 && timer < 300){
  fill(255,255,0);
  ellipse(510,263,30,30);
  C.play();
  }
    
  //green E
  if(timer>320 && timer < 400){
  fill(42,235,77);
  ellipse(630,230,30,30);
  E_up.play();
  }
  
  
  //GAME STATE
  
  //red F
  if (timer >420){
  fill(255);
  strokeWeight(4);
  
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

  }//END OF GAME STATE
  
  println(mouseX, mouseY);
  }


}