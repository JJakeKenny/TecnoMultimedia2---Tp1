
Rectangulo [] rects;

float velocidades[];

float limitesV[];

int cantRects;

void setup() {

  size(600, 600);

  cantRects = 80;

  rects = new Rectangulo[cantRects];

  velocidades = new float [cantRects];

  for ( int i=0; i<velocidades.length; i++) {

    if (i < cantRects/2) {
      velocidades[i] = random(-9, 9);
    } else if (i < cantRects-1) {
      velocidades[i] = random(-6, 6);
    } else {
      velocidades[i] = random(-3, 3);
    }
  }

  limitesV = new float [cantRects];

  for ( int i=0; i<limitesV.length; i++) {

    limitesV[i] = velocidades[i]*2;
  }

  for ( int i=0; i<rects.length; i++) {

    if (i < cantRects/2) {
      rects[i] = new Rectangulo(random(0, height), random(0, width), velocidades[i], limitesV[i], random(50, 150), random(50, 100), i*(220/80)+50);
    } else if (i < cantRects-1) {
      rects[i] = new Rectangulo(random(0, height), random(0, width), velocidades[i], limitesV[i], random(150, 250), random(80, 150), i*(220/80));
    } else {
      rects[i] = new Rectangulo(random(0, height), random(-50, 150), velocidades[i], limitesV[i], random(400, 700), random(200, 270), 255);
    }
  }


  //println(limitesV);
  // println(velocidades);
}

void draw() {

  background(0, 25, 15);

  for ( int i=0; i<rects.length; i++) {
    rects[i].dibujaRectangulo();
    rects[i].mueveRectangulo();
    rects[i].mouseRectangulo();
  }

  println(rects[1].vx);
  println(rects[1].maxVx);
}
