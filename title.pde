class TitlePage 
{
  
  TitlePage(){
  
  }
  
  void display() {
    background(0);
    fill(tc1,tc2,tc3);  
    if (tc1 < tc1b){
      tc1+=1;
    } else if (tc1 > tc1b) {
      tc1-=1;
    } else if (tc1 == tc1b) {
      tc1b = int(random(255));
    } else {
    }
    if (tc2 < tc2b){
      tc2+=1;
    } else if (tc2 > tc2b) {
      tc2-=1;
    } else if (tc2 == tc2b) {
      tc2b = int(random(255));
    } else {
    }
    if (tc3 < tc3b){
      tc3+=1;
    } else if (tc3 > tc3b) {
      tc3-=1;
    } else if (tc3 == tc3b) {
      tc3b = int(random(255));
    } else {
    }
    textAlign(CENTER);
    textSize(32);
    text("Music Visualizer", width/2, height/6);
    fill(255);
    textSize(22);
    text("By Chelsea Thompto", width/2, height/6+50);
    textSize(18);
    text("Instructions", width/2, height/4+100);
    textAlign(LEFT);
    textSize(12);
    text("Press 1 to Toggle Line Visualizer On and Off", width/5, height/4+125);
    text("Press 2 to Toggle Line 2 Visualizer On and Off", width/5, height/4+140);
    text("Press 3 to Toggle Square Visualizer On and Off", width/5, height/4+155);
    text("Press 4 to Toggle Square 2 Visualizer On and Off", width/5, height/4+170);
    text("Press 5 to Toggle Circle Visualizer On and Off", width/5, height/4+185);
    text("Use A and S to Adjust Wave Intensity", width/5, height/4+200);
    text("Use D and F to Adjust Line Thickness", width/5, height/4+215);
    text("Use Z to Toggle Between Shape Color Modes", width/5, height/4+230);
    text("Use X to Toggle Between Background Color Modes", width/5, height/4+245);
    text("Use Q to Toggle Blur Effect", width/5, height/4+260);
    text("Use W and E to Adjust Blur Effect", width/5, height/4+275);
    textAlign(CENTER);
    textSize(14);
    text("Press SpaceBar to start and to return to this screen.", width/2, height/4+310);
    stroke(255);
    strokeWeight(1);
    for(int i = 0; i < groove.bufferSize() - 1; i++)
    {
      float x1 = map( i, 0, groove.bufferSize(), width/3, (width/3)*2 );
      float x2 = map( i+1, 0, groove.bufferSize(), width/3, (width/3)*2 );
      line(x1, (height/6+95) + groove.mix.get(i)*50, x2, (height/6+95) + groove.mix.get(i+1)*50 );
    }
  }
}
