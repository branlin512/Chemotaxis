 //declare bacteria variables here
Bacteria chaser;
 //visit APCS Lowell to find how to place Ryan's face as chaser and starbucks logo as mouse
 void setup()   
 {
   size(600,600);
   chaser=new Bacteria();
 }   
 void draw()   
 { 
   background(0,0,0);
   chaser.move();
   chaser.show();
   chaser.textFlash();
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
   PImage ryanShi=loadImage("beauty.png"); 
   PImage food=loadImage("starbucks.png");
   int ryanX,ryanY,foodX,foodY;
   void move() {
     foodX=mouseX;
     foodY=mouseY;
     if(mouseX>ryanX) {
       ryanX+=(int)(Math.random()*5)-1;
     }
     else {
       ryanX+=(int)(Math.random()*5)-3;
     }
     if(mouseY>ryanY) {
       ryanY+=(int)(Math.random()*5)-1;
     }
     else {
       ryanY+=(int)(Math.random()*5)-3;
     }
     //implement ryanX and ryanY
   }
   void show() {
     image(ryanShi, ryanX, ryanY,60,60);
     image(food, foodX, foodY,60,60);
   }
   void textFlash() {
     //int randNum=(int)(Math.random()*5);
     if(Math.abs(ryanX-foodX)<=20 && Math.abs(ryanY-foodY)<=20) {
       //noLoop();
       fill(40,130,40);
       textSize(16);
       text("There goes your $5.25 Venti Caramel Macchiato with 2 shots of", 40,250);
       text("espresso, 2 pumps of vanilla syrup, and 20 oz of diabetes.", 50,265);
     }
     //else increment r up slowly
   }
 }    
