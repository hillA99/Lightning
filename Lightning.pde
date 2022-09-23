int startX=150;
int startY=300;
int endX = 300;
int endY = 300;
PImage pikachu;

void setup()
{
  size(400, 400);
  strokeWeight (5);
  pikachu = loadImage("pikachu.png");
  imageMode(CENTER);
  background(0);
}
void draw() {
  noStroke();
  image(pikachu,200,200,400,400);
  fill(0, 0, 0, 15);
  rect(0, 0, 400, 400);
  while (startX<400) {
    endX = startX + (int)(Math.random()*20)-6;
    endY = startY + (int)(Math.random()*9)-9;
    stroke(255,255,0);
    line (startX, startY, endX, endY);
    startX=endX;
    startY=endY;
  }
}
void mousePressed()
{
  startX=150;
  startY=200;
  endX = 400;
  endY = 300;
  redraw();
}



