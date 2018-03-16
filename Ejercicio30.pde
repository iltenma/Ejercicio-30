float posX, rotation, colore1, colore2;


void setup () {
  size (400, 400);
  noStroke ();
}

void draw () {
  background (0);
  
  if (mouseX >= 100 && mouseX <= 300 && mouseY >= 150 && mouseY <= 350) {
   
    posX = map (mouseX, 100, 300, -70, 320); 
    colore1 = map (mouseY, 100, 300, 0, 255);
    colore2 = 255 - colore1;
    rotation = map (mouseY, 0, 300, 0, 360);
    
  }
  
  fill (100, 255, 150);
  rect (100, 150, 200, 200);
  
  translate (posX, 100);
  rotate (radians (rotation)); 
  
  
  fill (colore2, colore2, 230);
  rect (-25, -25, 50, 50);
  
  
}