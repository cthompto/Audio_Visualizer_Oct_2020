class SquareViz2 
{
  SquareViz2(){
  }
 
 void display () {
    rectMode(CENTER);
    rect(width/2,height/2, 50+(groove.mix.level()*width*3), 50+(groove.mix.level()*height*3)); 
 }
}
