




const int LED = 4;
const int LED2 = 3;
const int trigPin1 = 7;
const int trigPin2 = 9;
const int trigPin3 = 11;
const int echoPin1 = 8;
const int echoPin2 = 10;
const int echoPin3 = 12;

const int buzzer =  5;  
const int buttonPin = 2;   
boolean on=false;


   // the number of the pushbutton pin




// variables will change:
int buttonState = 0;         // variable for reading the pushbutton status

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(LED, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(trigPin1, OUTPUT);
  pinMode(echoPin1, INPUT);
   pinMode(trigPin2, OUTPUT);
  pinMode(echoPin2, INPUT);
   pinMode(trigPin3, OUTPUT);
  pinMode(echoPin3, INPUT);
  // initialize the pushbutton pin as an input:
  pinMode(buttonPin, INPUT);
pinMode(buzzer, OUTPUT);      
}

void loop() {
  // put your main code here, to run repeatedly:

  buttonState = digitalRead(buttonPin); //버튼의 현재상태를 읽습니다.

 if (buttonState == HIGH) {  
      if(on==true){
      on=false;
    }  else{
      on=true;
    }
} 

  
  int distance1;
    int distance2;
      int distance3;

  digitalWrite(trigPin1, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin1, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin1, LOW);

  distance1 = pulseIn(echoPin1, HIGH) / 58.2;
  Serial.print(distance1);
  Serial.println(" cm");

   digitalWrite(trigPin2, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin2, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin2, LOW);

  distance2 = pulseIn(echoPin2, HIGH) / 58.2;
  Serial.print(distance2);
  Serial.println(" cm");

   digitalWrite(trigPin3, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin3, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin3, LOW);

  distance3 = pulseIn(echoPin3, HIGH) / 58.2;
  Serial.print(distance3);
  Serial.println(" cm");



  if (distance1 <= 45 || distance2<=45 || distance3 <=45) {
  
    digitalWrite(LED, HIGH);
    digitalWrite(LED2, HIGH);
    delay(100);
    digitalWrite (LED, LOW);
    digitalWrite (LED2, LOW);
    delay(100);
    digitalWrite(LED, HIGH);
    digitalWrite(LED2, HIGH);
    delay(100);
    digitalWrite (LED, LOW);
    digitalWrite (LED2, LOW);
    delay(100);
    digitalWrite(LED, HIGH);
    digitalWrite(LED2, HIGH);

  if(on==false ){
    tone(buzzer,1000,100);
    delayMicroseconds(30);
  }
else{
  
digitalWrite(buzzer,LOW);

}
  
  } else {
    digitalWrite(LED, LOW);
    
    digitalWrite(LED2, LOW);
    delay(100);
  }




  


}
