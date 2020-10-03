class ShapeColor 
{
  int c1;
  int c2;
  int c3;
  ShapeColor(int ic1, int ic2, int ic3){
    c1 = ic1;
    c2 = ic2;
    c3 = ic3;
  }
  
  void setting0() {
    stroke(255);
    fill(255,125);
  }
  
  void setting1() {
    stroke(0);
    fill(0,125);
  }
  
  void setting2() {
    if (c1 < c1b){
      c1+=1;
    } else if (c1 > c1b) {
      c1-=1;
    } else if (c1 == c1b) {
      c1b = int(random(255));
    } else {
    }
    if (c2 < c2b){
      c2+=1;
    } else if (c2 > c2b) {
      c2-=1;
    } else if (c2 == c2b) {
      c2b = int(random(255));
    } else {
    }
    if (c3 < c3b){
      c3+=1;
    } else if (c3 > c3b) {
      c3-=1;
    } else if (c3 == c3b) {
      c3b = int(random(255));
    } else {
    }
    stroke(c1, c2, c3);
    fill(c1, c2, c3, 125);
  }
  
}
