class CircleViz 
{
  CircleViz(){
  }
 
 void display () {
    ellipseMode(CENTER);
    ellipse(width/2,height/2, 100+(groove.mix.level()*width*3), 100+(groove.mix.level()*height*3)); 
 }
}
