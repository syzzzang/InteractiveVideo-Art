PImage img;
PImage bg;
PImage bad;
PImage good;


import processing.serial.*;

Serial myPort;  // Create object from Serial class
String myString =null;
int nl=10;
float myBPM;

void setup() {
  size(500, 500);

  printArray(Serial.list());

  bad = loadImage("bad.png");
  good = loadImage("good.png");
  bg = loadImage("BG.png");
  img=loadImage("newtherm.png");

  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
  
    

}

void draw() {
  image(bg, 0, 0, 500, 500);
  rectMode(CENTER);
  rect(127, height-(myBPM/2)-20, 40, myBPM);

  if (myBPM>300) {
    fill(255, 0, 0);
    image(good, 170, 70, 300, 350);
  } else if (myBPM<300) {
    fill(0, 0, 255);
      image(bad, 170, 70, 300, 350);
  }
  noStroke();



  image(img, 0, 0, 500, 500);



  while (myPort.available()>0) {
    myString=myPort.readStringUntil(nl);
    if (myString !=null) {
      background(0);
      myBPM=float(myString);
      myBPM=myBPM*2;
      if (myBPM<1) {
        myBPM=50;
      }
    }
  }
}
