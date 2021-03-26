import java.util.ArrayList;

boolean paused =false;
boolean doppler = true;
Source source;
Source source2;

void setup(){
   size(1500,1200);
   
   //source = new Source(5, 3, 20);
   source = new Source(3, 12, 20);// Sonic Boom!
   source2 = new Source(new PVector(width*0.75, height/2),0, 12, 20);
}

void keyPressed(){
  if (key == ' '){
   paused = !paused; 
  }
  else if( key == '1'){
    doppler = !doppler;
    source = new Source(0, 12, 20);
  }
}

void mousePressed(){
   source.pos = new PVector(mouseX, mouseY); 
}

void draw(){
  if(!paused){
  background(200);
  source.update();
  source.check();
  source.draw();
    if (!doppler){
      source2.update();
      source2.check();
      source2.draw();
    }
  }
 
}
