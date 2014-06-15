public class Ticks {
  int tick;
  int scale;

  public Ticks() {
    tick = 0;
    scale = 1;
  }

  int getTick() {
    return tick;

    void increase() {
      tick++;
    }

    void randomGenerator() {
      if (Random.nextInt(10) == 0) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Dud(true, 100*x+200, 300));
      } else if (Random.nextInt(10) == 1) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Dud(false, 100*x+200, 300));
      } else if (Random.nextInt(10) == 2) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Charger(100*x+200, 300));
      } else if (Random.nextInt(10) == 3) {
        for (int x = 0; x < 4; x++)
          enemies.add(new Boomerang(150*x+175, 300, scale));
      } else if (Random.nextInt(10) == 4) {
        for (int x = 0; x < 3; x++)
          enemies.add(new Shooter(200*x+200, 100, scale));
      } else if (Random.nextInt(10) == 5) {
        for (int x = 0; x < 2; x++)
          ememies.add(new Spinner(200*x+300, 50, scale));
      } else if (Random.nextInt(10) == 6) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Desecrator(100*x+200, 300, scale));
      } else if (Random.nextInt(10) == 7) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Shooter(100*x+200, 100, scale));
      } else if (Random.nextInt(10) == 8) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Charger(100*x+200, 300));
        for (int x = 0; x < 2; x++)
          ememies.add(new Spinner(200*x+300, 50, scale));
      } else if (Random.nextInt(10) == 9) {
        enemies.add(new Waver(400, 200, scale));
      }
    }

    //The game will be 3? minutes long
    //Each tick = 1 second
    //How do Matt 60, 120, 180
    void process() {
      if (tick > 10 && tick < 290) {
        if (tick % 10 == 3) {
          randomGenerator();
        } else if (tick % 10 == 6) {
          randomGenerator();
        } else if (tick % 10 == 9) {
          randomGenerator();
        }
      }
      if (tick == 1) {
        enemies.add(new Dud(true, 210, 200));
        enemies.add(new Dud(false, 590, 200));
        enemies.add(new Dud(true, 310, 200));
        enemies.add(new Dud(false, 490, 200));
        enemies.add(new Dud(true, 410, 200));
        enemies.add(new Dud(false, 390, 200));
        enemies.add(new Dud(true, 510, 200));
        enemies.add(new Dud(false, 290, 200));
        enemies.add(new Dud(true, 610, 200));
        enemies.add(new Dud(false, 190, 200));
      } else if (tick == 10) {
        enemies.add(new Charger(160, 50));
        enemies.add(new Charger(320, 50));
        enemies.add(new Charger(480, 50));
        enemies.add(new Charger(640, 50));
        enemies.add(new Boomerang(300, 100, scale));
        enemies.add(new Boomerang(500, 100, scale));
      } else if (tick == 20) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Shooter(100*x+200, 100, scale));
      } else if (tick == 30) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Shooter(100*x+200, 100, scale));
        enemies.add(new Waver(400, 200, scale));
      } else if (tick == 40) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Desecrator(100*x+200, 100, scale));
      } else if (tick == 50) {
        randomGenerator();
      } else if (tick == 60) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Shooter(100*x+200, 100, scale));
        enemies.add(new Waver(400, 200, scale));
      } else if (tick == 70) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Desecrator(100*x+200, 100, scale));
      } else if (tick == 80) {
        randomGenerator();
      } else if (tick == 90) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Shooter(100*x+200, 100, scale));
        enemies.add(new Waver(400, 200, scale));
      } else if (tick == 100) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Desecrator(100*x+200, 100, scale));
      } else if (tick == 110) {
        randomGenerator();
      } else if (tick == 120) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Shooter(100*x+200, 100, scale));
        enemies.add(new Waver(400, 200, scale));
      } else if (tick == 130) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Desecrator(100*x+200, 100, scale));
      } else if (tick == 140) {
        randomGenerator();
      } else if (tick == 150) {
        for (int x = 0; x < 9; x++)
          enemies.add(new Shooter(50*x+200, 100, scale));
        enemies.add(new Waver(300, 150, scale));
        enemies.add(new Waver(500, 150, scale));
      } else if (tick == 170) {
        for (int x = 0; x < 5; x++)
          enemies.add(new Dud(true, 100*x+200, 300));
        for (int x = 0; x < 5; x++)
          enemies.add(new Dud(false, 100*x+200, 200));
      } else if (tick == 175) {
        int 1 = 1; //queue epic music dun Dun DUN
      } else if (tick == 180)
        enemies.add(new Zamansky());

      if (enemies.size() == 0)
        tick = 0;
      scale += 0.5;
    }
  }
}

