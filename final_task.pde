float baseL = 5;
float baseW = 5;
float armL1 = 40;
float armL2 = 40;
float armL3 = 10;
float armW1 = 10;
float armW2 = 10;
float armW3 = 5;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float dif = 3.0;

void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);

  
  noStroke();  
}

void mouseDragged(){

}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'a'){
      angle0 = angle0 + dif;
    }
    if(key == 'A'){
      angle0 = angle0 - dif;
    }
    if(key == 's'){
      angle1 = angle1 + dif;
    }
    if(key == 'S'){
      angle1 = angle1 - dif;
    }
    if(key == 'd'){
      angle2 = angle2 + dif;
    }
    if(key == 'D'){
      angle2 = angle2 - dif;
    }
    if(key == 'f'){
      angle3 = angle3 + dif;
    }
    if(key == 'F'){
      angle3 = angle3 - dif;
    }
    if(key == 'g'){
      angle4 = angle4 + dif;
    }
    if(key == 'G'){
      angle4 = angle4 - dif;
    }
  }
  
  //base
  rotateZ(radians(angle0));
  translate(0,0,baseL/2);
  fill(50);
  box(baseW,baseL,baseW);
  
  //1st link
  rotateX(radians(angle1));
  translate(0,armL1/2-baseL/2,baseL/2+armW1/2);
  fill(100);
  box(armW1,armL1,armW1);
  
  //2nd link
  translate(0,armL1-2*armW2,0);
  rotateZ(radians(angle2));  
  
  translate(0,2*armW2,0);
  fill(150);
  box(armW2,armL2,armW2);
  
  //3rd link
  translate(0, armL2-armL3/2-armW2-armW3, 0);
  rotateZ(radians(angle3));
  
  translate(0, armL3/2, 0);
  rotateY(radians(angle4));
  fill(200);
  box(armW3,armL3,armW3);
}
