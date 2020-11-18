import processing.sound.*;
PImage dog;
PImage angrydog;
PImage muffin;
PImage fox;
boolean die;
AudioIn in;
Amplitude amp;
float x=0;


void setup(){
  size(1000,300);
  die=false;
  in = new AudioIn(this, 0);
  in.start();
  
  amp = new Amplitude(this);
  amp.input(in);
  
  dog=loadImage("dog.png");
  angrydog=loadImage("angrydog.png");
  muffin=loadImage("muffin.png");
  fox=loadImage("fox.png");
}


void draw(){
 background(#FAEAC0);
 noStroke();
 fill(#954F0E);
 rect(0,200,1000,300);
  
  float val =amp.analyze();
  println(val);

  
  if(!die&&x<730){
  image(dog,800,110,200,100);
    
  }
  
  if (val>0.35&&x<730){
  die=true;
  }
  if(die||x>=730){
  image(angrydog,850,50,150,200);
  
  }
  if(die){
  textSize(45);
  PFont font=loadFont("HoboStd-48.vlw");
  textFont(font);
  fill(0);
  text("Run away",100,100);
  }
  image(fox,x,80,140,140);
  
  if( val>0.1&&val<0.35&&!die){
  
    x +=2;
    PFont font=loadFont("HoboStd-48.vlw");
   textFont(font);
    fill(0);
    textSize(45);
    text("keep going!",100,80);
 }
 if(die){
   x=x-2;
 }
 
 if (x>=730){
   x=730;
   textSize(45);
   fill(0);
   text("Congratulations!",300,100);
   image(muffin,760,120,50,50);
 }
    
}

  /***
  if( val>0&&val<0.4){
  stroke(#FFFFFF);
  strokeWeight(4);
  line(460,180,490,180);
  line(510,180,540,180);
  }
  
  if (val>0.4){
  stroke(#FFFFFF);
  strokeWeight(4); 
  line(460,180,490,200);
  line(510,200,540,180);
  }
  
  fill(255);
  ellipse(width/2,height/2,val*250,val*250);
  ***/
  
  //
  
