//Codetober Week 1
//Music Visualizer
//By Chelsea Thompto
//v 0.02

//You must set your mic to speaker mixer for this to work.

//Import Minim Library and Activate Audio In

import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioInput groove;

//Create Objects

TitlePage Title;
LineViz lv;
SquareViz1 sv1;
SquareViz2 sv2;
CircleViz cv;
BGColor bgc;
ShapeColor sc;

//Define Variables

boolean line1 = true;
boolean line2 = false;
boolean square1 = false;
boolean square2 = false;
boolean circle1 = false;
boolean title = true;
boolean blur1 = false;
int amp = 250;
int colorsetting = 0;
int c1 = 0;
int c2 = 0;
int c3 = 0;
int c1b = int(random(255));
int c2b = int(random(255));
int c3b = int(random(255));
int sw = 1;
int colorsettingx = 0;
int c1x = 0;
int c2x = 0;
int c3x = 0;
int c1bx = int(random(255));
int c2bx = int(random(255));
int c3bx = int(random(255));
int tc1 = 255;
int tc1b = int(random(255));
int tc2 = 255;
int tc2b = int(random(255));
int tc3 = 255;
int tc3b = int(random(255));
int b = 1;

void setup()
{
  size(500, 500, P2D);
  smooth(2);
  frameRate(30);
  Title = new TitlePage();
  lv = new LineViz();
  sv1 = new SquareViz1();
  sv2 = new SquareViz2();
  cv = new CircleViz();
  bgc = new BGColor(c1x ,c2x, c3x);
  sc = new ShapeColor(c1, c2, c3);
  minim = new Minim(this);
  groove = minim.getLineIn();
}

void draw()
{
if(title){
  Title.display(); 
} else {
  strokeWeight(sw);
  if(colorsettingx == 0){
    bgc.setting0();
  }
  if(colorsettingx == 1){
    bgc.setting1();
  }
  if(colorsettingx == 2){
    bgc.setting2();
  }
  if(colorsetting == 0){
    sc.setting0();
  }
  if(colorsetting == 1){
    sc.setting1();
  }
  if(colorsetting == 2){
    sc.setting2();
  }
  if(line1){
    lv.horzline();
  }
  if(line2){
    lv.vertline();
  }
  if(square1){
    sv1.display();
  }
  if(circle1){
    cv.display();
  }
  if(square2){
    sv2.display();
  }
  if(blur1){
    filter(BLUR, b);
  }
}
}

void keyPressed() {
if (keyPressed) {
  if (key == ' ') {
    if(title == true){
      title = false;
    } else if (title == false) {
      title = true;
    }
  } else if (key == '1') {
    if(line1 == true){
      line1 = false;
    } else if (line1 == false) {
      line1 = true;
    }
  } else if (key == '2') {
    if(line2 == true){
      line2 = false;
    } else if (line2 == false) {
      line2 = true;
    }
  } else if (key == '3') {
    if(square1 == true){
      square1 = false;
    } else if (square1 == false) {
      square1 = true;
    }
  } else if (key == '4') {
    if(square2 == true){
      square2 = false;
    } else if (square2 == false) {
      square2 = true;
    }
  } else if (key == '5') {
    if(circle1 == true){
      circle1 = false;
    } else if (circle1 == false) {
      circle1 = true;
    }
  } else if (key == 'q' || key == 'Q') {
    if(blur1 == true){
      blur1 = false;
    } else if (blur1 == false) {
      blur1 = true;
    }
  } else if (key == 'e' || key == 'E') {
    b += 1;
  } else if (key == 'w' || key == 'W') {
    b -= 1;
    if (b <= 1) {
      b = 1;
    }
  } else if (key == 's' || key == 'S') {
    amp += 10;
  } else if (key == 'a' || key == 'A') {
    amp -= 10;
  } else if (key == 'z' || key == 'Z'){
    if (colorsetting < 3) {
      colorsetting++;
    } else if (colorsetting >= 3){
      colorsetting = 0;
    }
  } else if (key == 'x' || key == 'X'){
    if (colorsettingx < 3) {
      colorsettingx++;
    } else if (colorsettingx >= 3){
      colorsettingx = 0;
    }
  } else if (key == 'f' || key == 'F') {
    sw += 1;
  } else if (key == 'd' || key == 'D') {
    sw -= 1;
    if (sw <= 1) {
      sw = 1;
    }
  } else {
  }
}
}
