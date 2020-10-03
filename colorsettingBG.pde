class BGColor 
{
  int c1x;
  int c2x;
  int c3x;
  BGColor(int ic1x, int ic2x, int ic3x){
    c1x = ic1x;
    c2x = ic2x;
    c3x = ic3x;
  }
  
  void setting0() {
    c1x = 0;
    c2x = 0;
    c3x = 0;
    background(c1x,c2x,c3x);
  }
  
  void setting1() {
    c1x = 255;
    c2x = 255;
    c3x = 255;
    background(c1x,c2x,c3x);
  }
  
  void setting2() {
    if (c1x < c1bx){
      c1x+=1;
    } else if (c1x > c1bx) {
      c1x-=1;
    } else if (c1x == c1bx) {
      c1bx = int(random(255));
    } else {
    }
    if (c2x < c2bx){
      c2x+=1;
    } else if (c2x > c2bx) {
      c2x-=1;
    } else if (c2x == c2bx) {
      c2bx = int(random(255));
    } else {
    }
    if (c3x < c3bx){
      c3x+=1;
    } else if (c3x > c3bx) {
      c3x-=1;
    } else if (c3x == c3bx) {
      c3bx = int(random(255));
    } else {
    }
    background(c1x, c2x, c3x);
  }
  
}
