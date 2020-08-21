PImage img;
PImage col;

void setup(){
  
  
  col = loadImage("img/canyon_r_col.png");
  img = loadImage("depth/canyon_r_k.png");
  size(1366,786);
  //int wd = img.width;
  //int ht = img.height;
  //size(wd, ht);
  background(0);
  
}

void draw(){
  background(0);
  float noiseScale = 0.005;
  
  float cutoffH = 255 ;
  float cutoffL = 0 ;
  
  loadPixels();
  img.loadPixels();
  col.loadPixels();
  
  float dispValX = map(mouseX,0,width,-50,50);
  float dispValY = map(mouseY,0,height,-50,50);
  float strokeVal = 5;
  
  //float disp = 10;
  for (int y = 0; y<height; y= y + 6){
    
    //shape declaration

    //beginShape();
    //fill(0,100);
    //stroke(255,255);
    //strokeWeight(1);
    //vertex(0,height);
    //vertex(0,y);
    
    for (int x = 0; x<width; x= x + 6){
      
      int loc  = x+ y *width ;
      //noise declaration
      float dist = 0 * abs(noise(noiseScale*x, noiseScale*y));
      
      float b = brightness(img.pixels[loc]);
      //float c = color(col.pixels[loc]);
      float dispY = 1*map(b, cutoffL, cutoffH, -dispValY, dispValY*0.25);
      float dispX = 1*map(b, cutoffL, cutoffH, -dispValX, dispValX*0.25);
      //stroke(b + 200);
      //strokeWeight(map(b,0,255,0,strokeVal));
      
      
      if(b > cutoffL & b <= cutoffH){
        //shape
        //curveVertex(x - dispX + dist, y - dispY + dist);
        
        //points
        stroke(color(col.pixels[loc]));
        strokeWeight(map(b,0,255,1,strokeVal));
        point(x - dispX, y - dispY);
        
        continue;
      } else{
        
        //points
        //stroke(b + 50);
        //strokeWeight(map(b,0,255,1,strokeVal));
        stroke(70);
        strokeWeight(1);
        point(x + dist , y + dist);
        continue;
      }
     
    }
    
    //vertex(width,y);
    //vertex(width,height);
    //endShape();
    
  }
  //img.updatePixels();
  //updatePixels();
  
  
}
