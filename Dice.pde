
      int randint(int tippitytop) {
  return((int) (Math.random()*(tippitytop+1)));
}

        void setup()
  {
    size(500,600);
   
      noLoop();
  }
  void draw()
   {
     float total= 0;
     background(30);
 for (int i = 15; i<480; i+=60){
     for (int j = 15; j<480; j+=60){ 
   Die rolly= new Die(j,i);
      rolly.roll();
      rolly.show();
       total = total+rolly.dots;
     }  
     
 }
 fill(255);
 textSize(50);
  text ("Total Dots: " + (int)total, 75, 550);
   }
void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myY,myX,dots;
      Die(int x, int y) //constructor
      {
          myY=y;
          myX=x;
          dots=1;
      }
      void roll()
      {
          int rand=((int)(Math.random()*6)+1);
          if (rand==1){
          dots = 1;
          } else if(rand==2){
          dots = 2;
          }  else if(rand==3){
          dots = 3;
          }  else if(rand==4){
          dots = 4;
          }  else if(rand==5){
          dots = 5;
          } else{
          dots = 6;
          }
      }
      void show()
      {
     noStroke();
          fill(0);
          rect(myX,myY,50,50);
          fill(255,255,255);
          if (dots == 1){
          ellipse(myX+25,myY+25,5,5);
      } else if (dots == 2){
      ellipse (myX+12.5, myY+12.5,5,5);
      ellipse (myX+37.5,myY+37.5,5,5);
      }else if (dots ==3){
      ellipse (myX+12.5, myY+12.5,5,5);
      ellipse (myX+37.5,myY+37.5,5,5);
      ellipse (myX+25,myY+25,5,5);
      }else if (dots == 4){
      ellipse (myX+12.5, myY+12.5,5,5);
      ellipse (myX+37.5,myY+37.5,5,5);
      ellipse (myX+37.5,myY+12.5,5,5);
      ellipse (myX+12.5,myY+37.5,5,5);
      }else if (dots == 5){
      ellipse (myX+12.5, myY+12.5,5,5);
      ellipse (myX+37.5,myY+37.5,5,5);
      ellipse (myX+37.5,myY+12.5,5,5);
      ellipse (myX+12.5,myY+37.5,5,5);
      ellipse (myX+25,myY+25,5,5);
      } else {
      ellipse (myX+12.5, myY+12.5,5,5);
      ellipse (myX+37.5,myY+37.5,5,5);
      ellipse (myX+37.5,myY+12.5,5,5);
      ellipse (myX+12.5,myY+37.5,5,5);
         ellipse (myX+37.5,myY+25,5,5);
            ellipse (myX+12.5,myY+25,5,5);
      }
  }
  }
