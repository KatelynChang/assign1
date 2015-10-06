/* please implement your assign1 code in this file. */

PImage fighterImg;
PImage treasureImg;
PImage hpImg;
PImage enemyImg;
PImage bg1;
PImage bg2;

int x,y,hplong,xE,xBg1,xBg2,xBg3;


void setup () {
  // your code
  
  size(640,480) ;  // must use this size.
  colorMode(RGB);
  background(0,0,0);
  
  x = floor(random(640));
  y = floor(random(480));
  hplong = floor(random(9,211));
  xE = 0;
  xBg1 = 0;
  xBg2 = 0;
  xBg3 = 0;
  
  // fighter 
  fighterImg = loadImage("img/fighter.png");
  
  // treasure
  treasureImg = loadImage("img/treasure.png");
  
  // hp
  hpImg = loadImage("img/hp.png");
  
  // enemy
  enemyImg = loadImage("img/enemy.png");
  
  // background
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");

}

void draw() {
  // your code
  
  // background
  xBg1 =(xBg1-1)%1280;
  xBg2 =(xBg1+640-1)%1280;
  image(bg1,xBg1,0);
  image(bg2,xBg2,0);
  xBg3 =(xBg2+640-1);
  image(bg1,xBg3,0);

  

  // fighter
  image(fighterImg,580,240);
  
  // treasure
  image(treasureImg,x,y);
  
  // hp
  rectMode(CORNERS);
  rect(hplong,9,210,25);
  fill(255,0,0);
  stroke(255,0,0);
  image(hpImg,2,5);
  
  // enemy
  xE ++;
  xE %= 640;
  image(enemyImg,xE,100);
  
  

}
