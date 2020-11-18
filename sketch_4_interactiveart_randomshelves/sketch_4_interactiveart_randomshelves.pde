float n1, n2, n3, x1, y1;
float r1;
float angle;
void setup(){
  size(700,700);
  background(#674010);
  noLoop();
}

void draw(){
  //9shelves
  noStroke();
  pushMatrix();
  for(int i=1;i<10;i++){
    noStroke();
    fill(#F0CD88);
    if(i<=3){
    rect(25+((i-1)*200+25*(i-1)),25,200,200);
    }else if(i>3&&i<=6){
     rect(25+((i-4)*200+25*(i-4)),250,200,200);
    }else if(i>6&&i<=9){
      rect(25+((i-7)*200+25*(i-7)),475,200,200);
    }
  }
  popMatrix();
  
  //cup_1
  for(int i=1;i<3;i++){
  strokeWeight(2);
  stroke(0);
  n1=random(150);
  n2=random(200);
  n3=random(250);
  fill(n1,n2,n3);
  ellipse(110+((i-1)*90),190,20,40);
  rect(50+((i-1)*90),160,60,65);
  ellipse(80+((i-1)*90),160,60,20);
  }
  //flower_2
  noStroke();
  fill(#C2E0E8);
  rect(335,160,35,40);
  ellipse(350,200,70,50);
  noStroke();
  rect(337,162,31,40);
  
  for(int i=1;i<100;i++){
    fill(random(250),random(250),random(250),random(255));
    ellipse(random(300,400),random(60,155),30,30);
  }
  
  ///bag_3
  
  n1=random(250);
  n2=random(250);
  n3=random(250);
  fill(#F0CD88);
  stroke(n1,n2,n3);
  strokeWeight(10);
  ellipse(575,140,80,80);
  
  noStroke();
  fill(n1,n2,n3);
  rect(515,140,120,85);
  stroke(1);
  strokeWeight(0.2);
  beginShape();
  vertex(525,130);
  vertex(625,130);
  vertex(625,165);
  vertex(575,190);
  vertex(525,165);
  vertex(525,130);
  endShape();
  
  ///vitamin_4
  for(int i=0; i<3; i++){
  noStroke();
  fill(255);
  rect(40+(i*60),380,50,70);
  fill(random(0,255),random(0,255),random(0,255));
  stroke(1);
  strokeWeight(1);
  rect(40+(i*60),380,50,10);
  ellipse(65+(i*60),390,50,30);
  ellipse(65+(i*60),380,50,30);
  }
  
  ///5
  stroke(random(255),random(255),random(255));
  strokeCap(ROUND);
  strokeWeight(10);
  fill(255);
  ellipse(350,370,120,120);
  strokeWeight(1);
  fill(0);
  line(350,370,random(310,390),380);
  line(350,370,random(310,390),400);
  
  ///6
  for(int i=0;i<110;i++){
  noStroke();
  fill(#4B953B,random(255));
  triangle(495+25+i,390,497+25+i,320,499+25+i,390);
  }
  stroke(1);
  strokeWeight(1.5);
  fill(#C2E0E8);
  rect(485+25,390,130,60);
  
  ////book_789
  for(int i=1;i<11;i++){
  r1=random(550,580);
  stroke(1);
  strokeWeight(1.5);
  fill(random(201,255),random(201,255),random(201,255));
  rect(25+(i-1)*20,r1,20,(675-r1));
  }
  
 for(int i=12;i<22;i++){
  r1=random(550,580);
  fill(random(101,200),random(101,200),random(101,200)); 
  rect(30+(i-1)*20,r1,20,675-r1); 
  }
  
  for(int i=23; i<33;i++){  
  r1=random(550,580);
  fill(random(100),random(100),random(100));
  rect(35+(i-1)*20,r1,20,(675-r1));
  } 
}//draw end
