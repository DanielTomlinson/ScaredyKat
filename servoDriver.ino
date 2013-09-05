/* The purpose of this sketch is to illuminate an RGB led
 * and to cause a servo motor to move between 90 degrees
 */

#include <Servo.h>

#define PIN 9
#define RED 6
#define GREEN 7
#define BLUE 8


Servo myServo;
int pos = 0;

void setup() {
  myServo.attach(PIN);
  pinMode(RED, OUTPUT);
  pinMode(GREEN, OUTPUT);
  pinMode(BLUE, OUTPUT);
  
  digitalWrite(RED, HIGH);
  digitalWrite(GREEN, HIGH);
  digitalWrite(BLUE, HIGH);
}

void loop() {
  
  for (pos = 0; pos < 90; pos +=1) {
    myServo.write(pos);
    delay(15);
  }
  delay(500);
  for (pos = 90; pos > 0 ; pos -=1) {
    myServo.write(pos);
    delay(15);
  }
  delay(500);
  
}
  
