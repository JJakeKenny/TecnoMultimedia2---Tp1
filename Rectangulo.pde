class Rectangulo {

  float x, y, ancho, alto, vx, maxVx, vy, c, id, velocidadPredeterminada, colorP;

  Rectangulo(float x_, float y_, float vx_, float maxVx_, float ancho_, float alto_, float c_, int id_) {

    x = x_;

    y = y_;

    vx = vx_;

    maxVx = maxVx_;

    ancho = ancho_;

    alto = alto_;

    c = c_;
    
    id = id_;    
    
    velocidadPredeterminada = vx;
    
    colorP = c;
  }

  void dibujaRectangulo() {

    pushStyle();
    pushMatrix();

    translate(x, y);

    rectMode(CENTER);

    fill(50, c, 50);

    rect(0, 0, ancho, alto);

    popMatrix();
    popStyle();
  }

  void mueveRectangulo() {

    x += vx;

    if (x>width+ancho/2) {

      x -= width+ancho;
    } else if (x<0-ancho/2) {

      x += width+ancho;
    }
  }

  void mouseRectangulo() {

    // prinects/2x);

    if (mouseY < 200 && id < 40) {
      vx = map(mouseX, 0, width, -velocidadPredeterminada, velocidadPredeterminada);
      
      c = map(mouseX, 0, width, colorP/2, colorP);
    }else if (mouseY > 400 && id > 40) {
      vx = map(mouseX, 0, width, -velocidadPredeterminada, velocidadPredeterminada);
      
      c = map(mouseX, 0, width, colorP/2, colorP);
      
      println(-colorP);
    }
    /*
    if (mouseX > 400 ) {
     
     if (vx < maxVx) {
     
     // vx += maxVx/2;
     
     //vx += map(mouseX, 300, 0, 1, 2);
     
     vx += maxVx/2;
     
     } else if (vx > maxVx) {
     
     maxVx = -(maxVx);
     
     vx = -(vx);
     
     vx += maxVx/2;
     }
     } else if (mouseX < 200) {
     
     if (vx > maxVx) {
     
     vx += maxVx/2;
     } else if (vx < maxVx) {
     
     maxVx = -(maxVx);
     
     vx = -(vx);
     
     vx += maxVx/2;
     }
     } else {
     
     vx = maxVx/2;
     }
     
     */
  }
}
