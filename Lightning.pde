int startX=150;
int startY=300;
int endX = 300;
int endY = 300;

void setup()
{
  size(400, 400);
  strokeWeight (5);
  background(255);
  fill(125,125,125);
  
}
void draw() {
  //man
  fill(#F5F5DC);
  ellipse(200,375,100,150);
  fill(255,255,0);
  ellipse(200,300,100,100);
  ellipse(200+80,300+50,50,30);
  ellipse(200-80,300+50,50,30);
  fill(255,0,0);
  ellipse(200+40,300,25,25);
  ellipse(200-40,300,25,25);
  triangle(200,325-10,200-20,300,200+20,300);
  fill(0);
  ellipse(200+20,300-20,25,25);
  ellipse(200-20,300-20,25,25);
  // text
  fill(0);
  noStroke();
  fill(0, 15);
  rect(0, 0, 400, 400);
  while (startX<400) {
    endX = startX + (int)(Math.random()*20)-9;
    endY = startY + (int)(Math.random()*10);
    stroke(255,255,0);
    line (startX, startY, endX, endY);
    startX=endX;
    startY=endY;
  }
}
void mousePressed()
{
  startX=200;
  startY=0;
  endX = 200;
  endY = 200;
  redraw();
}
