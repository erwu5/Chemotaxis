 Bacteria[] dots; 

 void setup()   
 {    
   size(250, 250);
   dots = new Bacteria[1400];
   for(int i = 0; i< dots.length; i++)
     dots[i] = new Bacteria(); 
 }   
 void draw()   
 {    
   background(0);
   for (int i = 0; i < dots.length; i++)
   {
     dots[i].show();
     dots[i].move();
   }
 	   
 }  
 class Bacteria    
 { 
   int bacX, bacY, bacCol;
   Bacteria()
   {
     bacX = 150;
     bacY = 150;
     bacCol = (int)((Math.random()*bacX));
   }
   void move()
   {
     if(mouseX >bacX)
     {
       bacX = bacX + (int)(Math.random()*4)-1;
       bacY = bacY + (int)(Math.random()*3)-1;
     }
     else
     {
       bacX = bacX + (int)(Math.random()*2)-1;
       bacY = bacY + (int)(Math.random()*3)-1;
     }
     if(mouseY >bacY)
     {
       bacX = bacX + (int)(Math.random()*3)-1;
       bacY = bacY + (int)(Math.random()*4)-1;
     }
     else
     {
       bacX = bacX + (int)(Math.random()*3)-1;
       bacY = bacY + (int)(Math.random()*2)-1;
     }
   }
   void show()
   {
     noStroke();
     fill(bacCol, bacCol - mouseX, bacCol - mouseY);
     ellipse(bacX, bacY, 2, 2);
   }
 	//lots of java!   
 }    