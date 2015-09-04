int startX=0;
int startY=200;
int endX=0;
int endY=200;

int startV=0;
int startU=200;
int endV=0;
int endU=200;

void setup()
{
size(400,400);
strokeWeight(7);
background(0,0,0);
}
void draw()
{
background(0,0,0);
cloud();
stroke((int)(random(255)),(int)(random(255)),(int)(random(255)));

while(endY<400)
{
    endX = startX+(int)(random(-9,9));
    endY = startY+(int)(random(0,9));
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
}

while(endU<400)
{
    endV = startV+(int)(random(-9,9));
    endU = startU+(int)(random(0,9));
    line(startV,startU,endV,endU);
    startV = endV;
    startU = endU;
}


}
void mousePressed()
{
startX=(int)(Math.random()*400);
startY=60;
endX=200;
endY=0;

startV=(int)(Math.random()*400);
startU=60;
endV=200;
endU=0;
background(255,255,255);
}

void cloud()
{
noStroke();
fill(50,50,50);
ellipse(400,10,200,100);
ellipse(300,10,200,100);
ellipse(200,10,200,100);
ellipse(100,10,200,100);
ellipse(0,10,200,100);
}
