Bacteria [] bac = new Bacteria[100];

void setup() {
  size(500,500);
  background(0);
  for(int i = 0; i < bac.length; i++){
    bac[i] = new Bacteria();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < bac.length; i++){
    bac[i].move();
    bac[i].show();
  }
}

class Bacteria {
  int myX, myY, bColor;
  Bacteria() {
    myX = 100;
    myY = 100;
    bColor = color(255, 255, 255);
  }
  void move() {
    myX = myX + (int)(Math.random()*8)-3;
    myY = myY + (int)(Math.random()*8)-3;
  }
  void show() {
    fill(bColor);
    ellipse(myX, myY, 30, 30);
    
    // gradient
    
    int diam = 0;
    float g = 100;
    noFill();
    while(diam < 30){
      stroke(0,g,0);
      ellipse(myX,myY,diam,diam);
      diam++;
      g+=5;
    }
  } 
} 
