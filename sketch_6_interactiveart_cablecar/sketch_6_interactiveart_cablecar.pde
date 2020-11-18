PImage back;
PImage car1;
PImage car2;
float xPos[] = new float[5];
float yPos[] = new float[5];
float xSpeed=0.8;
float ySpeed=0.12;

void setup(){
  size(1000,600);
  back = loadImage("back3.jpg");
  car1 = loadImage("carcr.png");
  car2 = loadImage("carsm.png");
  xPos[0]=875;
  xPos[1]=625;
  xPos[2]=375;
  xPos[3]=125;
  xPos[4]=-125;
  yPos[0]=181.25;
  yPos[1]=143.75;
  yPos[2]=106.25;
  yPos[3]=68.75;
  yPos[4]=31.25; 
}

void draw(){
  image(back,0,0,1000,600);
  strokeCap(ROUND);
  strokeWeight(5);
  stroke(0);
  line(0,50,1000,200);
  
  for (int i = 0; i<5; i++){
    if(i%2==0){
      image(car2,xPos[i],yPos[i],120,200);
      xPos[i]+=xSpeed;
      yPos[i]+=ySpeed;
    } else {
      image(car1,xPos[i],yPos[i],120,200);
      xPos[i]+=xSpeed;
      yPos[i]+=ySpeed; 
    }
    if(xPos[i]>width+car2.width){
      if(i==0){
        xPos[i]=xPos[4]-250;
        yPos[i]=yPos[4]-37.5;
      }else{
          xPos[i]=xPos[i-1]-250;
          yPos[i]=yPos[i-1]-37.5;
      }
    }
    if(xPos[i]>width+car1.width){
      if(i==0){
        xPos[i]=xPos[4]-250;
        yPos[i]=yPos[4]-37.5;
      }else{
          xPos[i]=xPos[i-1]-250;
          yPos[i]=yPos[i-1]-37.5;
      }
    }
  }
}
