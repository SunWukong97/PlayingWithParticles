public class ParticleSystem
{
  ArrayList<Particle> particles;
  int screenHeight;
  int screenWidth;
  PVector position;
  ParticleSystem(int screenWidth, int screenHeight)
  {
    particles = new ArrayList<Particle>();
    this.screenWidth = screenWidth;
    this.screenHeight = screenHeight;
  }
  
  public void addParticle()
  {
    
    particles.add(new Particle(new PVector(random(0, this.screenWidth), this.screenHeight/2), this.screenHeight, this.screenWidth));
    //println(particles.size());
  }
  
  void run()
  {
    
    for(Particle p : particles)
    {
      Particle p = particles.get(i);
      p.run();
      
      wrap(p);
    }
    //for(int i = 0; i < particles.size(); i++)
    //{
    //  Particle p = particles.get(i);
    //  p.run();
      
    //  wrap(p);
      
      
      //println(p.loc.x);
    }
  }
  
  void wrap(Particle p)
  {
    if(p.loc.x < 0)
      p.loc.x = screenWidth;
    if(p.loc.x > screenWidth)
      p.loc.x = 0;
    if(p.loc.y < 0)
      p.loc.y = screenHeight;
    if(p.loc.y > screenHeight)
      p.loc.y = 0;
  }
  
  public int size()
  {
    return particles.size();
  } 
}
