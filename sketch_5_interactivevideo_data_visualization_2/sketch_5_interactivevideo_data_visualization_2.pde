String[] fileData;
int[] number;
int[] wifi;
PImage wi_fi;
PImage w1;
PImage w2;
PImage w3;
PImage w4;
PImage happy;
PImage sad1;
PImage sad2;

void setup() {
  size(1400, 800);
  
  fileData = loadStrings("data.txt");
  println(fileData.length);
  number = new int[fileData.length];
  wifi = new int[fileData.length];
  
  wi_fi=loadImage("wifi.png");
  w1=loadImage("1.png");
  w2=loadImage("2.png");
  w3=loadImage("3.png");
  w4=loadImage("4.png");
  happy=loadImage("happy.png");
  sad1=loadImage("sad1.png");
  sad2=loadImage("sad2.png");

  
  for (int i=0; i<fileData.length; i++) {
    println( fileData[i] );
    String[] values = splitTokens(fileData[i], " "); 
    number[i] = int(values[0]); 
    wifi[i] = int(values[1]); 
  }
}

void draw() {
  background(#C9B7F5);
  
  
  for (int i=0; i<fileData.length; i++ ) {
    pushMatrix();
    fill(255);
    stroke(255);
    rect((i+1)*100, 200, 80, 380);
    fill(#070952);
    rect((i+1)*100, 600, 80,-number[i]);
    popMatrix();
   
   
   if (wifi[i]>1000){
     image(w1,(i+1)*100+34,180,12,12);
   }
   if (wifi[i]>2000){
     image(w2,(i+1)*100+24,165,32,14);
   }
   if (wifi[i]>3000){
     image(w3,(i+1)*100+14,150,52,16);
   }
   if (wifi[i]>4000){
     image(w4,(i+1)*100+5,135,70,17);
   }
   
   if (mouseX>(i+1)*100&&mouseX<(i+1)*100+80&&mouseY<600&&mouseY>-number[i]){
     fill(255);
     textSize(45);
     text("Day "+(i+1), 20,690);
     text("You turned the screen on         times"+ " / used           MB",80,760);
     fill(#070952);
     text(number[i],690,760);
     text(wifi[i],1110,760);
  
       if (wifi[i]<3000){
         image(happy,1280,620,100,100);
       }
       if (wifi[i]>=3000&&wifi[i]<4000){
         image(sad1,1280,620,100,100);
       }
       if (wifi[i]>=4000){
         image(sad2,1280,620,100,100);
       }
 }
   
   

      
    strokeWeight(4);
    stroke(0);
    line(70,200,70,610);
    
    line(70,300,80,300);
    fill(255);
    
    line(70,400,80,400);
    
    line(70,500,80,500);
    
    line(70,610,1400,610);}
    textSize(20);
    text("100",27,507);
    text("200",27,407);
    text("300",27,307);

  
   PFont font=loadFont("Helvetica95-Black-48.vlw");
   textFont(font);
   textSize(50);
   fill(255);
   text("Are You an Addict? ",500,50);
   


}
