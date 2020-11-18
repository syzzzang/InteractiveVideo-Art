PImage explosion;
float exploX;
float exploY;
int alpha;
boolean increase;
boolean explo;

void setup(){
alpha = 0;
increase = true;
explo =false;
explosion = loadImage("explosion2.png");
size(740,440);
background(11,11,8);



}

void draw(){
//left building
//left_1_fire
//left building
//left_1
noStroke();
fill(23,17,39);
triangle(0,130,80,130,0,250);

//left_2
fill(28,26,62);
quad(100,50,200,50,55,440,-100,440);


fill(#09182C);
quad(120,50,160,50,0,390,0,280);
stroke(0,0,0);
strokeWeight(5);
line(147,50,0,355);
strokeWeight(2);
line(160,50,0,390);

line(106,75,132,75);
line(132,75,138,90);

//left_2_blackwindow
pushMatrix();
fill(0,0,0);
quad(148,90,182,90,176,100,141,100);
quad(128,130,165,130,161,140,122,140);
quad(105,175,150,175,146,185,101,185);
quad(82,223,132,223,128,233,78,233);
quad(61,270,115,270,111,280,55,280);
quad(38,320,95,320,91,330,34,330);
quad(12,380,74,380,70,390,8,390);
popMatrix();


line(90,110,115,110);
line(115,110,121,125);

line(72,145,100,145);
line(100,145,105,160);

line(50,190,80,190);
line(80,190,85,205);

line(22,240,55,240);
line(55,240,60,255);

line(0,290,30,290);
line(30,290,35,305);

//left_3
noStroke();
fill(11,15,48);
quad(200,50,245,230,185,440,55,440);

//right building
pushMatrix();
fill(22,16,54);
quad(485,380,520,170,640,440,520,440);
fill(39,39,94);
quad(520,170,610,170,740,440,640,440);
fill(34,30,81);
quad(610,170,700,220,750,330,740,440);
popMatrix();

//right_2_window
pushMatrix();
fill(187,159,63,70);
quad(540,190,565,190,575,210,550,210);
translate(20,40);
for(int i =0; i<5; i++){
quad(540,190,565,190,575,210,550,210);
translate(18,40);
quad(540,190,565,190,575,210,550,210);
}
popMatrix();

pushMatrix();
fill(187,159,63,70);
translate(40,0);
quad(540,190,565,190,575,210,550,210);

for(int i =0; i<6; i++){
translate(20,40);
quad(540,190,565,190,575,210,550,210);
}
popMatrix();
pushMatrix();

for(int i = 0; i<8; i++){
fill(64,15,20,alpha);
noStroke();
ellipse(0,135,10,10);
translate(8,0);
}


popMatrix();

pushMatrix();
for(int i = 0; i<7; i++){
fill(125,20,1,alpha);
ellipse(0,140,8,8);
translate(5,0);

}

for(int i = 0; i<4; i++){
fill(125,20,1,alpha);
ellipse(0,140,8,8);
translate(6,0);
}

popMatrix();

pushMatrix();
for(int i =0; i<11; i++){
fill(210,143,33,alpha);
ellipse(0,142,7,7);
translate(5,0);

}

popMatrix();

pushMatrix();
for(int i =0; i<24; i++){
fill(210,143,33,alpha);
ellipse(0,147,7,7);
translate(2,0);

}

popMatrix();



//left_2_fire
pushMatrix();
noStroke();
fill(64,15,20,alpha);
ellipse(100,135,30,30);
ellipse(70,137,20,20);
ellipse(90,150,20,20);
ellipse(80,160,30,30);
ellipse(105,120,30,28);
ellipse(78,120,30,28);
ellipse(88,145,25,28);

fill(125,20,1,alpha);
ellipse(110,150,32,32);
ellipse(70,160,32,32);
ellipse(100,170,32,32);
ellipse(89,160,32,32);
ellipse(91,159,32,32);
ellipse(92,150,32,32);
ellipse(78,140,40,40);
//yellow
fill(#D37E15,alpha);
ellipse(60,167,25,26);
ellipse(80,188,20,20);
ellipse(92,184,20,20);
ellipse(112,164,20,20);
ellipse(75,170,24,24);
ellipse(100,190,25,25);
if(increase){
  alpha+=5;
  if(alpha>=255){
    increase=false;
  }
}
else{
  alpha-=5;
  if(alpha<=0){
    increase=true;
  }
}

popMatrix();





//left_2_blacksmoke
pushMatrix();
noStroke();
fill(0,0,0,80);
ellipse(20,430,20,30);
translate(2,-10);
ellipse(20,430,20,30);
translate(3,-10);
ellipse(20,430,20,30);
translate(0,-10);
ellipse(20,430,20,30);
translate(0,-10);
ellipse(20,430,20,30);
translate(2,-10);
ellipse(20,430,20,30);
translate(4,-10);
ellipse(20,430,20,30);
translate(1,-10);
ellipse(20,430,20,30);
translate(2,-10);
ellipse(20,430,20,30);
translate(3,-10);
ellipse(20,430,20,30);
translate(4,-10);
ellipse(20,430,20,30);
translate(3,-10);
ellipse(20,430,20,30);
translate(3,-10);
ellipse(20,430,20,30);
translate(3,-10);
ellipse(20,430,20,30);
translate(6,-10);
ellipse(20,430,20,30);
translate(7,-10);
ellipse(20,430,20,20);
translate(8,-10);
ellipse(20,430,20,20);
translate(7,-10);
ellipse(20,430,20,20);
translate(8,-10);
ellipse(20,430,20,20);
translate(7,-10);
ellipse(20,430,20,20);
translate(5,-10);
ellipse(20,430,20,20);
translate(4,-10);
ellipse(20,430,10,20);
translate(3,-10);
ellipse(20,430,10,20);
translate(3,-10);
ellipse(20,430,10,10);
translate(4,-5);
ellipse(20,430,10,10);
translate(4,-5);
ellipse(20,430,10,10);
translate(4,-5);
ellipse(20,430,10,10);
translate(3,-5);
ellipse(20,430,10,10);
translate(4,-5);
ellipse(20,430,10,10);
translate(2,-5);
ellipse(20,430,10,10);
translate(2,-5);
ellipse(20,430,10,10);
translate(2,-5);
ellipse(20,430,10,10);
translate(3,-5);
ellipse(20,430,10,10);
translate(2,-5);
ellipse(20,430,10,10);
translate(2,-5);
ellipse(20,430,10,10);
translate(1,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(1,-5);
ellipse(20,430,10,10);
translate(1,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);
translate(0,-5);
ellipse(20,430,10,10);

popMatrix();

if(increase){
  alpha+=2;
  if(alpha>=150){
    increase=false;
  }
}
else{
  alpha-=2;
  if(alpha<=0){
    increase=true;
  }
}
//left_2_explosion
//exploX = 170 exploY=70
pushMatrix();
if(exploX<200&&exploY<200){
image(explosion,180,90,exploX,exploY);
exploX +=10;
exploY +=10;
}else{
  exploX=200;
  exploY=200;
}
popMatrix();
if(exploX==200&&exploY==200){
  explo=true;
}
if(explo==true){
image(explosion,200,90,210,210);
//beam
stroke(50,53,38,alpha);
strokeWeight(3);
line(365,200,510,210);
line(355,210,505,240);
line(350,220,500,270);
}
}
