public class Particle
{
  PVector loc, vel;
  float accel, theta;
  float colour; 
  float opacity;
  int screenHeight;
  int screenWidth;
  Particle(PVector loc, int screenHeight, int screenWidth)
  {
    this.loc =  loc;
    //this.vel = new PVector(random(-1.5, 1.5), random(-2.5, 2.5));
    this.theta = noise(loc.x * 0.005, loc.y * 0.02) * TWO_PI;
    this.vel = new PVector(cos(theta) * 2, sin(theta) * 2);
    this.accel = 1;
    this.colour = 255;
    this.opacity = 255;
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
    
  }
  
  public void display()
  {
    fill(91, 151, random(240,255), this.opacity);
    //fill(255, 255, 255, this.opacity);
    noStroke();
    ellipse(loc.x, loc.y, 10, 10);
    
    
  }
  
  
  
 
  
}
