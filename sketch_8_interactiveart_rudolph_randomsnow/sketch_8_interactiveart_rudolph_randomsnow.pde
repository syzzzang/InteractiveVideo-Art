PImage ground;
PFont font;
House house1;
House house2;
House house3;
Rudolph rudolph;
Window window1;
Window window2;
Window window3;
Window window4;
Pocket pocket;
TextStr textstr;

void setup(){
  size(700,700);
  background(14,113,184);
  ground = loadImage("ground.png");
  font = loadFont("BradleyHandITC-48.vlw"); 
  house1 = new House();
  house1.x = -15;
  house1.y = 400;
  house2 = new House();
  house2.x = 465;
  house2.y = 380;
  house3 = new House();
  house3.x = 230;
  house3.y = 240;
  rudolph = new Rudolph();
  rudolph.x = 350;
  rudolph.y = 280;
  window1 = new Window();
  window1.x = 15;
  window1.y = 300;
  window2 = new Window();
  window2.x = 85;
  window2.y = 300;
  window3 = new Window();
  window3.x = 490;
  window3.y = 280;
  window4 = new Window();
  window4.x = 560;
  window4.y = 280;
  pocket = new Pocket();
  textstr = new TextStr();
  
  noLoop();
}

void draw(){
  snow();
  house1.display_1();
  house2.display_1();
  house3.display_2();
  window1.display();
  window2.display();
  window3.display();
  window4.display();
  image(ground,0,-100,1700,1500);  
  pocket.display();
  rudolph.display();
  textstr.display();
  
  
}
void snow(){
  for(int i = 0; i<1000; i++){
    int r = int(random(1,8));
    noStroke();
    fill(random(183,255),random(227,255),255);
    ellipse(random(width),random(height),r,r);
}
}

class House{
 int x;
 int y;
 
 House(){
   x=0;
   y=0;
 }
   void display_1(){
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
 
 void display_2(){
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
}

class Rudolph{
  int x;
  int y;
  Rudolph(){
    x=0;
    y=0;
  }
  void display(){
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
}
  
  class Window{
    int x;
    int y;
    Window(){
      x=0;
      y=0;
    }
    void display(){
      strokeWeight(2);
      stroke(#341903);
      fill(#010F43);
      rect(x,y,20,20);
    }
  }
  
  class Pocket{
    Pocket(){
    }
    void display(){
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
  }
  
  class TextStr{
    String text;
    int x;
    int y;
    TextStr(){
      text = "Merry-Christmas";
      x = 100;
      y = 90;
    }
    void display(){
      textFont(font,70);
      fill(#64CB63);
      text(text,x,y);
    }
  }
