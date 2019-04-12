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
seriale=new Serial(this, "/dev/cu.usbmodemFA131",9600);
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
