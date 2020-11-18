PImage judy;
PImage donut;
float xDonut=800;

void setup(){
  size(1000,600);
 
  judy=loadImage("judy_run.png");
  donut=loadImage("donut.png");
}

void draw(){
   background(#A6CEF5);
   
   
   //tree
   noStroke();
   fill(#4B794C);
   ellipse(480,150,200,200);
   ellipse(850,200,250,200);
   
   //buildings
   
   //beige building
   noStroke();
   fill(#F5A599);
   rect(0,0,80,500);
   fill(#FCE4E0);
   rect(60,20,380,480);
   
    //window
    smooth();
    stroke(#642D0C);
    strokeWeight(3);
    fill(#A2CFF0);
    rect(90,40,80,80);
    rect(210,40,80,80);
    rect(330,40,80,80);
    rect(90,150,80,80);
    rect(210,150,80,80);
    rect(330,150,80,80);
    rect(90,260,80,80);
    rect(210,260,80,80);
    rect(330,260,80,80);
    rect(90,380,80,100);
    rect(210,380,80,100);
    rect(330,380,80,100);
   
   //brown building
   noStroke();
   fill(#71341B);
   rect(530,180,200,320);
   fill(#954A2C);
   quad(530,30,730,30,760,180,500,180);
   
   //window
    smooth();
    stroke(#642D0C);
    strokeWeight(5);
    fill(#A2CFF0);
    rect(540,240,160,80);
    rect(540,350,160,80);
    fill(#642D0C);
    rect(610,240,20,190);
   
   
   //pink building
   noStroke();
   fill(#FCA399);
   rect(380,200,180,300);
   
   //window
    smooth();
    stroke(#AF6D1B);
    strokeWeight(7);
    fill(#A2CFF0);
    rect(410,230,120,90);
    rect(410,350,120,90);
    fill(#AF6D1B);
    rect(470,230,3,90);
    rect(470,350,3,90);
    rect(410,275,120,4);
    rect(410,395,120,4);
    
   //blue building
   noStroke();
   fill(#5BB475);
   rect(720,190,280,310);
   stroke(#AF6D1B);
   strokeWeight(7);
   fill(#954A2C);
   arc(890,498,150,250,PI,TWO_PI);
   
   noStroke();
   fill(#D2F2F1);
   rect(750,220,70,70);
   rect(850,220,70,70);
   rect(950,220,70,70);
   
   
   //train track
   noStroke();
   fill(#B9754D);
   rect(0,540,1000,20);
   rect(30,550,20,50);
   rect(100,550,20,50);
   rect(170,550,20,50);
   rect(240,550,20,50);
   rect(310,550,20,50);
   rect(380,550,20,50);
   rect(450,550,20,50);
   rect(520,550,20,50);
   rect(590,550,20,50);
   rect(660,550,20,50);
   rect(730,550,20,50);
   rect(800,550,20,50);
   rect(870,550,20,50);
   rect(940,550,20,50);
   
   //donut
    
   if (key=='g'){ 
      image(donut,int(xDonut),400,240,200);
       xDonut=xDonut-2;
   }if(key=='s'){
     image(donut,int(xDonut),400,240,200);
       xDonut=xDonut+2;
   }
  
   image(judy,mouseX-100,mouseY-50,250,150);
   
}
