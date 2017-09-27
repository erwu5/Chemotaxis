 Bacteria[] dots; 

 void setup()   
 {    
   size(300, 300);
   dots = new Bacteria[1000];
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
     bacCol = 0;
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
     fill(bacX, bacY, 255);
     ellipse(bacX, bacY, 2, 2);
   }
 	//lots of java!   
 }    