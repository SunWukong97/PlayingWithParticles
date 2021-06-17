public class Particle
{
  PVector loc, vel;
  float accel, theta;
  float lifeSpan; 
  int screenHeight;
  int screenWidth;
  Particle(PVector loc, int screenHeight, int screenWidth)
  {
    this.loc =  loc;
    //this.vel = new PVector(random(-1.5, 1.5), random(-2.5, 2.5));
    this.theta = noise(loc.x * 0.01, loc.y * 0.009) * TWO_PI;
    this.vel = new PVector(cos(theta) * 2, sin(theta) * 2);
    this.accel = 1;
    this.lifeSpan = 255;
    this.screenHeight = screenHeight;
    this.screenWidth = screenWidth;
  }
  public void run()
  {
    this.update();
    this.display();
  }
  public void update()
  {
    this.vel.mult(accel);
    this.loc.add(vel);
    //this.lifeSpan = map((screenHeight/2.6)/this.loc.y, 0.5, 1 , 255, 0);
    //println(this.loc.y);
    //println(this.loc.x);
    //this.lifeSpan -=0.5;
  }
  
  public void display()
  {
    fill(91, 151, random(240,255), this.lifeSpan);
    
    ellipse(loc.x, loc.y, 10, 10);
    
    
  }
  
  
  
  public boolean deadParticle()
  {
    if(this.lifeSpan <= 0)
      return true;
    
    else 
      return false;
  }
  
}
