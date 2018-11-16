
class ParticulesSystem {
  ArrayList<Particules> particles;
  PVector origin;
  int type;
  
  ParticulesSystem(PVector position) {
    origin = position.copy();
    particles = new ArrayList<Particules>();
  }

  void addParticles() {
    particles.add(new Particules(int(random(0,3)),int(random(10,20)),int(random(-5,10))));
  }

  void run(float low, float mid, float hight, float ampli) {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particules p = particles.get(i);
      p.run(low,mid,hight,ampli);
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}
