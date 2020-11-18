PImage ground;
PFont font;
void setup(){
  size(700,700);
  background(14,113,184);
  ground = loadImage("ground.png");
  font = loadFont("BradleyHandITC-48.vlw"); 
  noLoop();
}

void draw(){
  snow();
  house_1(-15,400);
  house_1(465,380);
  house_2(230,240);
  window(15,300);
  window(85,300);
  window(490,280);
  window(560,280);
  image(ground,0,-100,1700,1500);  
  pocket();
  rudolph(350,280);
  textStr("Merry-Christmas",100,90);
}

void house_1(int x, int y){
  fill(171,155,161);
  noStroke();
  quad(x+100,y-170,x+300,y-170,x+360,y-100,x+160,y-100);
  rect(x+160,y-100,200,100);
  beginShape();
  vertex(x,y);
  vertex(x+160,y);
  vertex(x+160,y-100);
  vertex(x+80,y-180);
  vertex(x,y-100);
  vertex(x,y);  
  endShape();
  
  strokeCap(ROUND);
  stroke(#E3E8E8);
  strokeWeight(15);
  line(x-5,y-95,x+80,y-180);
  line(x-5,y-95,x-5,y);
  line(x+80,y-180,x+160,y-95);
  line(x+5,y-50,x+155,y-50);
  line(x+160,y-95,x+160,y);
  line(x+160,y-95,x+360,y-95);
  
  noStroke();
  fill(#DBC5CD);
  rect(x+150,y-190,30,50);
  
}

void house_2(int x, int y){
  noStroke();
  fill(167,185,188);
  rect(x,y,250,170);
  fill(#ACB7B7);
  quad(x+20,y-90,x+230,y-90,x+270,y+10,x-20,y+10);
  strokeCap(ROUND);
  strokeWeight(10);
  stroke(#E3E8E8);
  line(x-20,y+10,x+20,y-90);
  line(x+20,y-90,x+230,y-90);
  line(x+230,y-90,x+270,y+10);
  line(x+270,y+10,x-20,y+10);
  
  noStroke();
  fill(#D3E3E3);
  rect(x+180,y-110,30,50);
}

void window(int x, int y){
  strokeWeight(2);
  stroke(#341903);
  fill(#010F43);
  rect(x,y,20,20);
  
}

void snow(){
  for(int i = 0; i<1000; i++){
    int r = int(random(1,8));
  noStroke();
  fill(random(183,255),random(227,255),255);
  ellipse(random(width),random(height),r,r);
}
}
void rudolph(int x, int y){
  
  //legs
  noStroke();
  fill(196,153,108);
  rect(x-40,y+250,30,60);
  rect(x+10,y+250,30,60);
  //foot
  noStroke();
  fill(159,110,76);
  ellipse(x-25,y+310,40,30);
  ellipse(x+25,y+310,40,30);
   //body
  noStroke();
  fill(159,110,76);
  ellipse(x,y+150,170,240);
   
  //arms
  pushMatrix();
  fill(196,153,108);
  rotate(radians(30));
  translate(x+75,y-150);
  ellipse(0,100,40,130);
  popMatrix();
  pushMatrix();
  fill(196,153,108);
  rotate(radians(-30));
  translate(x-170,y+200);
  ellipse(0,100,40,130);
  popMatrix();  
  //head
  noStroke();
  fill(196,153,108);
  ellipse(x-65,y-65,40,30);
  ellipse(x+65,y-65,40,30);
  ellipse(x,y,150,180);
  ellipse(x,y+40,200,100);
  //eyes
  fill(0);
  ellipse(x-20,y,10,10);
  ellipse(x+20,y,10,10);
  //ears
  fill(113,67,24);
  ellipse(x-65,y-65,25,15);
  ellipse(x+65,y-65,25,15);
  //red_nose
  fill(223,44,66);
  ellipse(x,y+30,40,40);
 //horn
  stroke(113,67,24);
  strokeWeight(20);
  line(x-35,y-70,x-60,y-170);
  line(x-40,y-90,x-70,y-110);
  line(x-40,y-120,x-25,y-160);
  
  line(x+35,y-70,x+60,y-170);
  line(x+40,y-90,x+70,y-110);
  line(x+40,y-120,x+25,y-160);
}

void pocket(){
  pushMatrix();
  rotate(radians(30));
  translate(400,250);
  noStroke();
  fill(223,44,66);
  quad(-80,0,80,0,60,50,-60,50);
  ellipse(0,140,190,220);
  popMatrix();
  
  stroke(#3AA539);
  strokeWeight(20);
  strokeCap(ROUND);
  line(135,430,250,500); 
}
void textStr(String str, int x, int y){
  textFont(font,70);
  fill(#64CB63);
  text(str,x,y);
}
