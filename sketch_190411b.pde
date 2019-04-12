import processing.serial.*;

Serial seriale;
int coord[]=new int[4];
int x1=100;
int y1=300;
int x2=700;
int y2=300;
int gradi;
void setup()
{
size(800,600);
/*Sistemi Windows: Impostazioni-> Periferiche Hardware-> Porte COM & LPT -> USB Serial Port: 
trovare la porta COM dove è connesso arduino (Di solito è indicato in basso a destra nell'ide di Arduino). 
Se è la 3 in ordine dall'alto, scrivere qui sotto Serial.list()[2], Se è la 4, scrivere Serial.list()[3]*/

seriale=new Serial(this, seriale.list()[2],9600);
/* MAC-OS: commentare la riga precedente e decommentare la seguente riga e sostituire "/dev/cu.usbmodemFA131" con il percorso della seriale dove è connesso arduino 
(Di solito è indicato in basso a destra nell'ide di Arduino)*/
//seriale=new Serial(this, "/dev/cu.usbmodemFA131",9600);
}
void draw()
{
background(5,8,245);
delay(100);
if (seriale.available()>0)
gradi=seriale.read();
coord[0]=x1;
coord[1]=y1+(gradi-180);
coord[2]=x2;
coord[3]=y2-(gradi-180);
stroke(0);
fill(0);
ellipse(400,300,20,20);
line(coord[0],coord[1],coord[2],coord[3]);
text(str(gradi),10,10,70,80);
}
