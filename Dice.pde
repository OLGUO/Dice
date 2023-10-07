Die one;
int sum = 0;

void setup() {
  size(500,500);
  noLoop();
}

void draw () 
  {
  background(2,252,127);
for(int x = 50; x < 450; x+=50) {
  for(int y =25; y < 450; y+=50){
    one = new Die(x,y);
    one.roll();
    one.show();
}
}
fill(0);
textAlign(TOP, CENTER);
textSize(20);
text("Total: " + sum, 200,10);
}

void mousePressed() {
redraw();
sum = 0;
}

class Die {
int numDots, myX, myY;
Die(int x, int y)//constructor 
{
  numDots = 0;
  myX = x;
  myY = y;
}

void roll()
      {
        numDots = (int)(Math.random()*6 +1);
        sum = sum + numDots;
      }
void show()
      {
      if (numDots == 1) {
        fill(0);
       stroke(255);
      rect(myX,myY,50,50);
        fill(255);
        ellipse(myX+25, myY+25, 5, 5);
      }
       if (numDots == 2) {
         fill(0);
      stroke(255);
      rect(myX,myY,50,50);
        fill(255);
        ellipse(myX+10, myY+10, 5, 5);
        ellipse(myX+40, myY+40, 5, 5);
      }
      if (numDots == 3) {
        fill(0);
      stroke(255);
      rect(myX,myY,50,50);
        fill(255);
        ellipse(myX+10, myY+10, 5, 5);
        fill(255);
        ellipse(myX+40, myY+40, 5, 5);
        fill(255);
        ellipse(myX+25, myY+25, 5, 5);
      }
      if (numDots == 4) {
        fill(0);
        stroke(255);
        rect(myX,myY,50,50);
        fill(255);
        ellipse(myX+10, myY+10, 5, 5);
        ellipse(myX+40, myY+10, 5, 5);
        ellipse(myX+40, myY+40, 5, 5);
        ellipse(myX+10, myY+40, 5, 5);
      }
      if (numDots == 5) {
        fill(0);
        stroke(255);
        rect(myX,myY,50,50);
        fill(255);
        ellipse(myX+10, myY+10, 5, 5);
        ellipse(myX+40, myY+40, 5, 5);
        ellipse(myX+25, myY+25, 5, 5);
        ellipse(myX+40, myY+10, 5, 5);
        ellipse(myX+10, myY+40, 5, 5);
      }
      if (numDots == 6) {
        fill(0);
        stroke(255);
        rect(myX,myY,50,50);
        fill(255);
        ellipse(myX+10, myY+10, 5, 5);
        ellipse(myX+10, myY+25, 5, 5);
        ellipse(myX+10, myY+40, 5, 5);
        ellipse(myX+40, myY+10, 5, 5);
        ellipse(myX+40, myY+25, 5, 5);
        ellipse(myX+40, myY+40, 5, 5);
}

}
     
}
