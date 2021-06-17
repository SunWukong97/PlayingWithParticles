
ParticleSystem ps;
int screenWidth = displayWidth;
int screenHeight = displayHeight;
int numOfParticles = 3000;
void setup()
{
  frameRate(30);
  //fullScreen();
  size(900, 900);
  background(0);
  ps = new ParticleSystem(900, 900);
  particleSetUp();
 
}

void draw()
{
  background(0);

  ps.run();
  
}

void particleSetUp()
{
  for(int i = 0; i < numOfParticles; i++)
  {
    ps.addParticle();
  }
}
