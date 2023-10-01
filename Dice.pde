public int total;
public int clicks;
class Dice{
  int diceRoll, myX, myY;
  Dice(int x, int y){
    myX = x;
    myY = y;
  }
void roll(){
  diceRoll = (int)(Math.random()*6)+1;
  total = total + diceRoll;
}
void show(){
  fill(255);
  rect(myX-25,myY-25,50,50,8);
  fill(132,115,68);
  if(diceRoll == 1){
    ellipse(myX,myY,12,12);
  }
  else if(diceRoll == 2){
    ellipse(myX-10,myY-10,10,10);
    ellipse(myX+10,myY+10,10,10);
  }
  else if(diceRoll == 3){
    ellipse(myX-15,myY-15,10,10);
    ellipse(myX+15,myY+15,10,10);
    ellipse(myX,myY,10,10);
  }
  else if(diceRoll == 4){
    ellipse(myX-12,myY-12,10,10);
    ellipse(myX+12,myY+12,10,10);
    ellipse(myX-12,myY+12,10,10);
    ellipse(myX+12,myY-12,10,10);
  }
  else if(diceRoll == 5){
    ellipse(myX-15,myY-15,10,10);
    ellipse(myX+15,myY+15,10,10);
    ellipse(myX-15,myY+15,10,10);
    ellipse(myX+15,myY-15,10,10);
    ellipse(myX,myY,10,10);
  }
  else if(diceRoll == 6){
    ellipse(myX+10,myY+15,10,10);
    ellipse(myX+10,myY,10,10);
    ellipse(myX+10,myY-15,10,10);
    ellipse(myX-10,myY+15,10,10);
    ellipse(myX-10,myY,10,10);
    ellipse(myX-10,myY-15,10,10);
  }
  }
}
void setup(){
size(500,500);
fill(240,247,135);
stroke(125,182,239);
strokeWeight(8);
rect(25,135,450,330,20);
}
void draw(){
  fill(255);
  strokeWeight(8);
  stroke(153,253,250);
  rect(25,30,450,80,20);
  stroke(151,151,151);
  strokeWeight(2);
  fill(0);
  textSize(25);
  text("Total: " + total,200,80);
  textSize(15);
  text("Rolls: " + clicks,50,100);
  total = 0;
  noLoop();
  for(int y = 180; y < 450; y+=60){
  for(int x = 70; x < 450 ; x+=60){
  Dice bob = new Dice(x,y);
  bob.roll();
  bob.show();
}
}
}
void mousePressed(){
  redraw();
  clicks++;
}
