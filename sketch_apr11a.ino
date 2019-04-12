int posizione;
byte gradi;
void setup() {
  Serial.begin(9600);
  // put your setup code here, to run once:

}

void loop() {
  posizione=analogRead(A2);
  gradi=map(posizione,0,1023,0,250);
  Serial.print(char(gradi));
  delay(200);
  // put your main code here, to run repeatedly:

}
