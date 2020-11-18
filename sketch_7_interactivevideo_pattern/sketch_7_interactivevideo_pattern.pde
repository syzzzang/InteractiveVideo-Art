PImage bossbaby;
int i=0;


void setup() {
  size(1000,800);
  
  bossbaby = loadImage("bossbaby.png");

}

void bedClothes(float x, float y){
  
  noStroke();
  fill(136,136,112);
  rect(35,335,50,50);
  fill(218,217,211);
  rect(85,335,50,50);
  fill(144,142,163);
  rect(135,335,50,50);
  
  fill(144,142,163);
  rect(35,435,50,50);
  fill(136,136,112);
  rect(85,435,50,50);
  fill(218,217,211);
  rect(135,435,50,50);
  
  fill(218,217,211);
  rect(35,385,50,50);
  fill(144,142,163);
  rect(85,385,50,50);
  fill(136,136,112);
  rect(135,385,50,50);
  
  translate(x,y);
}




void draw() {
  background(#09025D);
  
    for (int i=0; i<50;i++){
    for (int j=0; j<8; j++){
      star(i*80,j*40);
      star(i*40,(j+1)*80);
    }}
  
  //bed
  noStroke();
  fill(#3E2602);
  rect(0,300,1000,500);
  fill(255);
  rect(10,310,980,490);
  
  
  //pillow
  noStroke();
  fill(150,148,169);
  rect(820,380,150,290);
  
  image(bossbaby,790,440,200,200);
  
  stroke(#9694A9);
  strokeWeight(7);
  noFill();
  rect(30,330,760,460);
  
  bedClothes(0,0);
  pushMatrix();
  bedClothes(150,0);
  bedClothes(150,0);
  bedClothes(150,0);
  bedClothes(150,0);
  bedClothes(150,0);
  popMatrix();
  pushMatrix();
  bedClothes(0,150);
  bedClothes(150,0);
  bedClothes(150,0);
  bedClothes(150,0);
  bedClothes(150,0);
  bedClothes(150,0);
  popMatrix();
  pushMatrix();
  bedClothes(0,300);
  bedClothes(150,0);
  bedClothes(150,0);
  bedClothes(150,0);
  bedClothes(150,0);
  bedClothes(150,0);
  popMatrix();
  
 
}

void star(float x, float y){
  pushMatrix();
  translate(x,y);
  noStroke();
  fill(#FFF874);
  ellipse(10,10,5,5);
  popMatrix();
}
    
   
