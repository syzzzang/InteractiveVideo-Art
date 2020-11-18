import processing.video.*;
PImage c1;
PImage c2;
PImage c3;
Capture video;

void setup(){
  size(640,480);
  
  video = new Capture( this, 640,480);
  video.start();
  
  c1 = loadImage("c1.png");
  c2 = loadImage("c2.png");
  c3 = loadImage("c3.png");
}

void draw(){
  if (video.available()){
    video.read();
  }
    background(0);
  image(video,0,0);
  
  fill(0);
  noStroke();
  rect(0,0,640,40);
  rect(0,440,640,40);
  rect(0,0,40,480);
  rect(600,0,40,480);
  fill(#24139B);
  ellipse(50,460,20,20);
  fill(#FDA7FF);
  ellipse(80,460,20,20);
  fill(255);
  ellipse(110,460,20,20);
 


  if (key=='1'){
  image(c1,mouseX,mouseY,400,240);
  }
  if (key=='2'){
  image(c2,mouseX,mouseY,400,240);
  }
  if (key=='3'){
  image(c3,mouseX,mouseY,400,240);
  }
}
