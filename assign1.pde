/* please implement your assign1 code in this file. */

PImage fighterImg;
PImage treasureImg;
PImage hpImg;

int x,y,hplong;


void setup () {
  // your code
  
  size(640,480) ;  // must use this size.
  colorMode(RGB);
  background(0,0,0);
  
  x = floor(random(640));
  y = floor(random(480));
  hplong = floor(random(9,211));
  
  // fighter 
  fighterImg = loadImage("img/fighter.png");
  
  // treasure
  treasureImg = loadImage("img/treasure.png");
  
  // hp
  hpImg = loadImage("img/hp.png");
}

void draw() {
  // your code
  
  // fighter
  background(0,0,0);
  image(fighterImg,580,240);
  
  // treasure
  image(treasureImg,x,y);
  
  // hp
  rectMode(CORNERS);
  rect(hplong,9,210,25);
  fill(255,0,0);
  stroke(255,0,0);
  
  image(hpImg,2,5);
  
  
  
}/ your code
}
