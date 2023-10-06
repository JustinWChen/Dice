
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
  text ("Total Dots: " + (int)total, 50, 550);
   }
