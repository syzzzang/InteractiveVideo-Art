import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_2_interactivevideo_myfavoritefood extends PApplet {

public void setup(){
 
  
    background(149,110,26);
   
        //desk

  stroke(0xff714F03);
  strokeWeight(3);
  fill(242,236,223);
  rect(60,60,880,660);
  stroke(1);
  strokeWeight(1);
  rect(60,720,60,100);
  rect(880,720,60,100);

  //plate

  noStroke();
  fill(255,255,255);
  ellipse(430,400,700,600);
  stroke(0);
  strokeWeight(0.4f);
  noFill();
  ellipse(430,400,690,590);
 
  //omelet
 
  pushMatrix();
  noStroke();
  fill(250,215,40);
  rotate(PI/32);
  ellipse(460,380,650,380);
  popMatrix();
 
  //spoon and chopsticks
 

  noStroke();
  fill(184,184,178);
  ellipse(819,280,80,150);
  noStroke();
  fill(184,184,178);
  rect(810,270,20,400);
 
  stroke(106,103,89);
  strokeWeight(2);
  line(811,650,828,650);
  line(811,646,828,650);
 
  noStroke();
  fill(184,184,178);
  rect(870,260,20,410);
  stroke(106,103,89);
  strokeWeight(2);
  line(871,650,888,650);
  line(871,646,888,650);
 
  pushMatrix();
  translate(33,0);
  noStroke();
  fill(184,184,178);
  rect(870,260,20,410);
  stroke(106,103,89);
  strokeWeight(2);
  line(871,650,888,650);
  line(871,646,888,650);
  popMatrix();
 
 
  //pickled cucumber
 
  pushMatrix();
  stroke(0xff3E7C31);
  strokeWeight(5);
  fill(0xff82E56D);
  ellipse(110,460,80,90);
  scale(0.97f,0.97f);
  translate(60,70);
  stroke(0xff3E7C31);
  strokeWeight(5);
  fill(0xff82E56D);
  ellipse(110,460,80,90);
  scale(0.98f,0.98f);
  translate(60,70);
  strokeWeight(5);
  fill(0xff82E56D);
  ellipse(110,460,80,90);
  popMatrix();


}
 
public void draw(){
 
    if (mousePressed==true){
    noStroke();
    fill(255,0,0);
    ellipse(mouseX,mouseY,20,20);
    print(mouseX);
    }
}
  public void settings() {  size(1000,800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_2_interactivevideo_myfavoritefood" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
