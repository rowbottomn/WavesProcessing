

class Source{
  
  PVector pos;
  PVector vel;
  ArrayList <Crest>waves;
  color col = color(200, 200, 0, 100);
  float period = 100;
  float freq = 60/period;
  float speed_sound = 3; 
  
  public Source(){
    pos = new PVector(0, height/2);
    vel = new PVector(1, 0);
    waves = new ArrayList<Crest>();
  }

  public Source(float speed, float period ){
    pos = new PVector(0, height/2);
    vel = new PVector(speed, 0);
    waves = new ArrayList<Crest>();
    period = period;
    freq = 60/period;
  }
  
  public Source(float speed, float _speed, float _period ){
    pos = new PVector(width/4, height/2);
    vel = new PVector(speed, 0);
    waves = new ArrayList<Crest>();
    period = _period;
    freq = 60/period;
    speed_sound = _speed;
  }
   
  public Source(PVector _pos, float speed, float _speed, float _period ){
    pos = _pos;
    vel = new PVector(speed, 0);
    waves = new ArrayList<Crest>();
    period = _period;
    freq = 60/period;
    speed_sound = _speed;
  }
  void update(){
    pos.add(vel);  
    for(int i = 0; i < waves.size(); i++){
        waves.get(i).update();
    }
  }
   
  void check(){
    if(pos.x > width+10){
      pos.x = -10;
    }
    if (frameCount%period==0){
        waves.add(new Crest(pos, speed_sound));
        println("making wave"+waves.size());
    }
    for(int i = 0; i < waves.size(); i++){
      Crest wave = waves.get(i);
      if (wave.radius>3*width){
       waves.remove(wave); 
      }
    }
  }
  
  void draw(){
    //draw the source
    noStroke();
    fill(0);
    ellipse(pos.x, pos.y, 20, 20);
    for(int i = 0; i < waves.size(); i++){
        waves.get(i).draw();
    }

  }
}
