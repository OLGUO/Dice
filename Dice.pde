Die one;
int sum = 0;

void setup() {
  size(400,400);
   noLoop();
  textAlign(CENTER);
 
}

void draw () {
  background(255);
for(int x = 0; x <400; x+=50) {
  for(int y = 0; y <400; y+=100){

one = new Die(x,y);
one.show();
}
System.out.println();
}
fill(0);
text("Total: " + sum, 50,380);
}


void mousePressed() {
redraw();
sum = 0;
fill(255);
text("Total: " + sum, 50,380);
}

class Die {
int numDots, myX, myY;
Die(int x, int y) {
numDots = (int)(Math.random()*6+1);
myX = x;
myY = y;
}

void roll()
      {
         // text("Total: " + sum,50,375);
      }
void show()
      {
       int size = 50;
       for(int i = 0; i < numDots; i++) {
          fill(255);
      rect(myX,myY,size,size);
      if (numDots == 1) {
        fill(0);
        ellipse(myX+25, myY+25, 5, 5);
        i+=1;
      }
       if (numDots == 2) {
        fill(0);
        ellipse(myX+10, myY+10, 5, 5);
        fill(0);
        ellipse(myX+40, myY+40, 5, 5);
       i+=2;
      }
      if (numDots == 3) {
        fill(0);
        ellipse(myX+10, myY+10, 5, 5);
        fill(0);
        ellipse(myX+40, myY+40, 5, 5);
        fill(0);
        ellipse(myX+25, myY+25, 5, 5);
        i+=3;
      }
      if (numDots == 4) {
        fill(0);
        ellipse(myX+10, myY+10, 5, 5);
        fill(0);
        ellipse(myX+40, myY+10, 5, 5);
        fill(0);
        ellipse(myX+40, myY+40, 5, 5);
        fill(0);
        ellipse(myX+10, myY+40, 5, 5);
       i+=4;
      }
      if (numDots == 5) {
        fill(0);
        ellipse(myX+10, myY+10, 5, 5);
        fill(0);
        ellipse(myX+40, myY+40, 5, 5);
        fill(0);
        ellipse(myX+25, myY+25, 5, 5);
        fill(0);
        ellipse(myX+40, myY+10, 5, 5);
        fill(0);
        ellipse(myX+10, myY+40, 5, 5);
       i+=5;
      }
      if (numDots == 6) {
        fill(0);
        ellipse(myX+10, myY+10, 5, 5);
        fill(0);
        ellipse(myX+10, myY+25, 5, 5);
        fill(0);
        ellipse(myX+10, myY+40, 5, 5);
        fill(0);
        ellipse(myX+40, myY+10, 5, 5);
        fill(0);
        ellipse(myX+40, myY+25, 5, 5);
        fill(0);
        ellipse(myX+40, myY+40, 5, 5);
      i+=6;

      }
    sum = sum + i;
 
}

      }
     
}
