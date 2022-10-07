int sum = 0;
    int dieNum = 0;
    void setup()
  {
      noLoop();
      size (400,400);
  }
  void draw()
  {
    background (#B0C4DE);
      sum = 0;
      for(int y = 50; y < 270; y+=80)
  {
    for(int x = 70; x < 300; x+=70)
    {
      Die bob = new Die(x,y);
      bob.show();
      sum = sum + dieNum;
    }
  }
  textSize (30);
  text ("Sum of Dots: " +  sum,90,330);
  }
  void mousePressed()
  {
    redraw();
    
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX, myY, dot;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          roll();
          myX = x;
          myY = y;
      }
      void roll()
      {
          //your code here
          dot = (int)(Math.random()*6) + 1;
          dieNum = dot;
      }
      void show()
      {
          fill (255,255,255);
          rect (myX, myY, 50,50);
          fill (0,0,0);
          if ( dot == 1){
          ellipse (myX + 25, myY + 25, 5,5);
          } else if ( dot == 2){
          ellipse (myX + 12, myY + 12,5,5);
          ellipse (myX + 38, myY + 38,5,5);
          } else if (dot == 3){
         ellipse (myX + 25, myY + 25, 5,5);
          ellipse (myX + 12, myY + 12,5,5);
          ellipse (myX + 38, myY + 38,5,5);
          } else if (dot == 4){
          ellipse (myX + 12, myY + 12,5,5);
          ellipse (myX + 38, myY + 12,5,5);
          ellipse (myX + 12, myY + 38,5,5);
          ellipse (myX + 38, myY + 38,5,5);
          } else if (dot ==5){
          ellipse (myX + 12, myY + 12,5,5);
          ellipse (myX + 38, myY + 12,5,5);
          ellipse (myX + 12, myY + 38,5,5);
          ellipse (myX + 38, myY + 38,5,5);
          ellipse (myX + 25, myY + 25, 5,5);
          } else {
          ellipse (myX + 12, myY + 12,5,5);
          ellipse (myX + 38, myY + 12,5,5);
          ellipse (myX + 12, myY + 38,5,5);
          ellipse (myX + 38, myY + 38,5,5);
          ellipse (myX + 25, myY + 12, 5,5);
          ellipse (myX + 25, myY + 38, 5,5);
      }
 }
  }
