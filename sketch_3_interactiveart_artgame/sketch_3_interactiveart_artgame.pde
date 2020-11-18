PImage dory;
PImage back;
PImage shark;
PImage sea;
PImage end;
PImage shell;
PImage parent;
int xPos;
int yPos;

boolean kill_1;
boolean kill_2;
boolean kill_3;
boolean get_1;
boolean get_2;
boolean get_3;
int doriGame = 0;
int seaX = 0;
int seaXspeed = -2;

void setup(){
  size(900,600);
  xPos = 20;
  yPos = 200;
  kill_1 = true;
  kill_2 = true;
  kill_3 = true;
  get_1 = true;
  get_2 = true;
  get_3 = true;
  dory = loadImage("dory.png");
  shark = loadImage("shark.png");
  end = loadImage("end.png");
  sea = loadImage("sea.png");
  shell = loadImage("shell.png");
  back = loadImage("back.png");
  parent = loadImage("parent.png");
}


void draw(){
  if (doriGame==0){
  image(back,0,0,1200,600);
  
  
  if (seaX>0||seaX<-321){
    seaXspeed=-seaXspeed;
  }
  image(sea,seaX,0);
  seaX = seaX + seaXspeed;
  
  
  image(dory,xPos,yPos,120,90);
  
  if (kill_1 == true){
    image(shark,200,200,130,100);
  }
  if (kill_2 == true){
    image(shark,500,100,130,100);
  }
  if (kill_3 == true){
    image(shark,700,400,140,100);
  }
  if (get_1 == true){
    image(shell,400,300,130,100);
  }
  if (get_2 == true){
    image(shell,80,480,120,100);
  }
  if (get_3 == true){
    image(shell,750,200,120,100);
  }
  
  keyPressed();
  mousePressed();
  
  doriGetShell();
  doriIsDead();
  
  } else if (doriGame == 1){
    deadWindow();
  } else if (doriGame == 2){
    parentWindow();
  }
}

void keyPressed(){
  if (key == 'a'){
    xPos = xPos - 5;

  }
  if (key == 'd'){
    xPos = xPos + 5;

  }
  if (key == 's'){
    yPos = yPos + 5;

  }
  if (key == 'w'){
    yPos = yPos - 5;

  } 
}

void mouseClicked(){
  if (mouseX>200&&mouseX<330&&mouseY>200&&mouseY<300){
    kill_1 = false;
  }
  if (mouseX>500&&mouseX<630&&mouseY>100&&mouseY<200){
    kill_2 = false;
  }
  if (mouseX>700&&mouseX<840&&mouseY>400&&mouseY<500){
    kill_3 = false;
  }
 
}

void doriIsDead(){
  if (kill_1 == true ){
    if (xPos>100&&yPos>170&&xPos<330&&yPos<300){
      doriGame = 1;
    }
  }
  if (kill_2 == true){
    if (xPos>400&&yPos>80&&xPos<630&&yPos<200){
      doriGame = 1;
    }
  }
  if (kill_3 == true){
    if (xPos>590&&yPos>370&&xPos<840&&yPos<500){
      doriGame = 1;
    }
  }
  
}

void deadWindow(){
  image(end,50,150,800,300);
  
}

void doriGetShell(){
  if (get_1 == true ){
    if (xPos>350&&yPos>300&&xPos<500&&yPos<400){
      get_1 = false;
      
    }
  }
  if (get_2 == true){
    if (xPos>60&&yPos>480&&xPos<180&&yPos<580){
      get_2 = false;
    }
  }
  if (get_3 == true){
    if (xPos>710&&yPos>180&&xPos<870&&yPos<270){
      get_3 = false;
      
    }
  }
  
  if(get_1==false&&get_2==false&&get_3==false){
    doriGame = 2;
}
}
void parentWindow(){
    image(parent,0,0,900,600); 
}
