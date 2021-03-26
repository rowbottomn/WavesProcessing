class Crest{
   
  PVector pos;
  float radius;
  float speed = 3;
  
  public Crest(PVector _pos){
    pos = new PVector( _pos.x, _pos.y);
    radius = 10;
  }
  
  public Crest(PVector _pos, float _speed){
    pos = new PVector( _pos.x, _pos.y);
    radius = 10;
    speed = _speed;
  }
  
  void update(){
    radius += speed;
    
  }
  
  void check(){

  }
  
  void draw(){
     strokeWeight(20);
     stroke(255,255,0,100);
     noFill();
     ellipse(pos.x, pos.y, radius, radius);
  }
}
