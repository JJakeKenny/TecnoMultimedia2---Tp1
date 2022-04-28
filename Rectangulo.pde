class Rectangulo {

  float x, y, ancho, alto, vx, maxVx, vy, c;

  Rectangulo(float x_, float y_, float vx_, float maxVx_, float ancho_, float alto_, float c_) {

    x = x_;

    y = y_;

    vx = vx_;

    maxVx = maxVx_;

    ancho = ancho_;

    alto = alto_;

    c = c_;
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

    // println(vx);

    if (mouseX > 400 ) {

      if (vx < maxVx) {

        // vx += maxVx/2;

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
  }
}
