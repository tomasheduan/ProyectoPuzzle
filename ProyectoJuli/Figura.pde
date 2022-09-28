// FORMATO ESTRUCTURAL UNICO DEL PUZZLE: Cuadrado

public class Cuadrado {
//PROPIEDADES: 
color c;
int posInicialx;
int  posInicialy;
float lado;
PImage img;
// CONSTRUCTOR DEL CUADRADO:
Cuadrado(color c_,int x_,int y_, int l_,PImage img_)
{
  posInicialx=x_;
  posInicialy=y_;
  lado=l_;
  c=c_;
  img=img_;
}
 //METODOS
  void figuraFijaDescubierta()
  {
    image(img,posInicialx,posInicialy); 
  }
  
  void figuraFijaCubierta()
  {
    fill(c);
    rect(posInicialx,posInicialy,lado,lado);
  }
}
