String[] fileData;
int[] number;
int[] wifi;
PImage wi_fi;

void setup() {
  size(1400, 700);
  
  fileData = loadStrings("data.txt");
  println(fileData.length);
  number = new int[fileData.length];
  wifi = new int[fileData.length];
  
  wi_fi=loadImage("wifi.png");

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
    rect((i+1)*100, 200, 80, number[i]);
    rect((i+1)*100, 100, 5, 100);
    popMatrix();
    
    noStroke();
    fill(255, 0, 0);
    //ellipse(i*82,150,50,wifi[i]/40);
    
    image(wi_fi,(i+1)*100, 100, wifi[i]/50, wifi[i]/50);
    
    
      fill(255);
      textSize(20);
      text(wifi[i]+"MB",(i+1)*100,680);
      textSize(15);
      text(number[i],(i+1)*100+10,220);
      
    strokeWeight(4);
    stroke(0);
    line(70,200,70,610);
    
    line(70,300,80,300);
    fill(255);
    
    line(70,400,80,400);
    
    line(70,500,80,500);
    
    line(70,610,1400,610);}
    textSize(20);
    text("100",30,300);
    text("200",30,400);
    text("300",30,500);
    textSize(40);
    text("WIFI",10,140);
    textSize(20);
    text("number",10,200);
    
   PFont font=loadFont("Helvetica95-Black-48.vlw");
   textFont(font);
   textSize(50);
   fill(255);
   text("Are You an Addict? ",500,50);
   

  textSize(20);
   text("Day 1",115,640);
   text("Day 4",415,640);
   text("Day 7",715,640);
   text("Day 10",1015,640);
   text("Day 13",1315,640);
}
