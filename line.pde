class LineViz 
{
  LineViz(){
  }
 
  void horzline() {
    for(int i = 0; i < groove.bufferSize() - 1; i++)
    {
      float x1 = map( i, 0, groove.bufferSize(), 0, width );
      float x2 = map( i+1, 0, groove.bufferSize(), 0, width );
      line(x1, width/2 + groove.mix.get(i)*amp, x2, width/2 + groove.mix.get(i+1)*amp );
    }
  }
  
  void vertline() {
    for(int i = 0; i < groove.bufferSize() - 1; i++)
    {
      float x1 = map( i, 0, groove.bufferSize(), 0, width );
      float x2 = map( i+1, 0, groove.bufferSize(), 0, width );
      line(height/2 + groove.mix.get(i)*amp, x1, height/2 + groove.mix.get(i+1)*amp, x2);
    }
  } 
}
