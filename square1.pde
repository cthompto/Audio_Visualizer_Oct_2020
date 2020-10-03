class SquareViz1 
{
  SquareViz1(){
  }
 
 void display () {
   for(int i = 0; i < groove.bufferSize() - 1; i++)
    {
      float x1a = map( i, 0, groove.bufferSize(), width/4, (width/4)*3);
      float x2a = map( i+1, 0, groove.bufferSize(), width/4, (width/4)*3);
      float y1a = map( i, 0, groove.bufferSize(), height/4, (height/4)*3);
      float y2a = map( i+1, 0, groove.bufferSize(), height/4, (height/4)*3);
      line(x1a, width/4 + groove.mix.get(i)*amp, x2a, width/4 + groove.mix.get(i+1)*amp);
      line(x1a, (width/4)*3 + groove.mix.get(i)*amp, x2a, (width/4)*3 + groove.mix.get(i+1)*amp);
      line(height/4 + groove.mix.get(i)*amp, y1a, height/4 + groove.mix.get(i+1)*amp, y2a);
      line((height/4)*3 + groove.mix.get(i)*amp, y1a, (height/4)*3 + groove.mix.get(i+1)*amp, y2a);
    }
 }
}
