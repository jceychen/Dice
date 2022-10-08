int sum, rollSix;
void setup()
{
  size(740, 800);
  noLoop();
}

void draw()
{
  background(0);
  for (int y=30; y<710; y+=100) {
    for (int x=30; x<690; x+=100) {
      Die dice=new Die(x, y);
      dice.show();
      dice.roll();
      sum+=dice.theRoll;
    }
  }
  fill (255);
  textAlign(CENTER);
  textSize(30);
  text("sum: " + sum, 90, 760);
  text("flowers: " + rollSix, 645, 760);
}

void mousePressed()
{
  redraw();
  sum = 0;
  rollSix = 0;
}

class Die
{
  int theX, theY, theRoll;
  Die(int x, int y)
  {
    theX = x;
    theY = y;
    theRoll = (int)(Math.random()*6+1);
  }

  void show()
  {
    fill(255);
    rect(theX, theY, 80, 80, 20);
  }

  void roll()
  {
    noStroke();
    fill((int)(Math.random()*130)+140, (int)(Math.random()*130)+140, (int)(Math.random()*130)+140);
    if (theRoll == 1) {
      ellipse(theX+40, theY+40, 15, 15);
    } else if (theRoll==2) {
      ellipse(theX+60, theY+60, 15, 15);
      ellipse(theX+20, theY+20, 15, 15);
    } else if (theRoll==3) {
      ellipse(theX+20, theY+20, 15, 15);
      ellipse(theX+40, theY+40, 15, 15);
      ellipse(theX+60, theY+60, 15, 15);
    } else if (theRoll==4) {
      ellipse(theX+20, theY+20, 15, 15);
      ellipse(theX+60, theY+20, 15, 15);
      ellipse(theX+20, theY+60, 15, 15);
      ellipse(theX+60, theY+60, 15, 15);
    } else if (theRoll==5) {
      ellipse(theX+20, theY+20, 15, 15);
      ellipse(theX+60, theY+20, 15, 15);
      ellipse(theX+40, theY+40, 15, 15);
      ellipse(theX+20, theY+60, 15, 15);
      ellipse(theX+60, theY+60, 15, 15);
    } else {
      ellipse(theX+40, theY+32, 15, 15);
      ellipse(theX+50, theY+39, 15, 15);
      ellipse(theX+40, theY+39, 15, 15);
      ellipse(theX+30, theY+39, 15, 15);
      ellipse(theX+35, theY+49, 15, 15);
      ellipse(theX+45, theY+49, 15, 15);
      rollSix++;
    }
  }
}
