class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float randomColourR;
  float randomColourG;
  float randomColourB;
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
     randomColourR=random(1,255);
     randomColourG=random(1,255);
     randomColourB=random(1,255);
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    fill(randomColourR,randomColourB,randomColourB);
    ellipse(position.x, position.y, 10, 10);
  }
}
