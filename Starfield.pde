Particle[] p = new Particle[500];
Obp ob;

public void setup() {
  size(500, 500);
  for (int i = 0; i < p.length; i++)
    p[i] = new Particle();
  ob = new Obp();
}

public void draw() {
  background(255);
  fill(49, 99, 0);
  rect(0, 400, 800, 200);

  for (int i = 0; i < p.length; i++) {
    p[i].show();
    p[i].move();
  }

  ob.show();
  ob.move();
}

class Particle {
  double myX, myY, mySpeed, myAngle;
  int myColor;

  Particle() {
    myX = myY = 250;
    myAngle = Math.random() * 2 * Math.PI;
    mySpeed = Math.random() * 10;
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }

  public void show() {
    fill(255, 225, 100);
    ellipse((float)myX, (float)myY, 25, 25);
  }

  public void move() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
}

class Obp extends Particle {
  Obp() {
  }

  public void move() {
    myX += Math.cos(myAngle) * Math.random() + (Math.random() - 0.5) * 2;
    ;
    myY += Math.sin(myAngle) * Math.random() + (Math.random() - 0.5) * 2;
    ;
  }

  public void show() {
    fill(139, 69, 19);
    rect((float)myX, (float)myY, 100, 50);
    fill(0);
    text("CHEST", (float)(myX + 25), (float)(myY + 25));
  }
}

