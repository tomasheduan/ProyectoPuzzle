//Juego

public class juego
{
  //PROPIEDADES DEL JUEGO:
  boolean tr1;
  boolean tr2;
  Cuadrado fondoCuadrado;
  PiezasPuzzle triangulo;
  int posicionInicioXCuadrado=270;
  int posicionInicioYCuadrado=100;
  int posicionYTriangulos = 450;
  int posicionXTrianguloUno = 30;
  int ladoCuadrado = 250;
  PImage img;
  PImage fondo;
  //PROPIEDADES: 
  public juego()
  {
      img=loadImage("fondo2.jpg");
      fondo=loadImage("fondo.jpg");
      fondoCuadrado=new Cuadrado(color(0),posicionInicioXCuadrado,posicionInicioYCuadrado,ladoCuadrado,img);
      triangulo=new PiezasPuzzle(color(255,0,0),posicionXTrianguloUno,posicionYTriangulos);
      
  }
  void correrJuego()
  {
     image(fondo,0,0);
     fondoCuadrado.figuraFijaCubierta();
     tr1 = triangulo.trianguloUno(posicionInicioXCuadrado,posicionInicioYCuadrado);
     tr2 = triangulo.trianguloDos(posicionInicioXCuadrado,posicionInicioYCuadrado);
     fill(0);
     textSize(30);
     text("¡PUZZLE!",335,40);
     textSize(20);
     text("DESCUBRE LA IMAGEN OCULTA COLOCANDO LAS PIEZAS CORRECTAMENTE",135,60); 
     if(tr1&&tr2)
     {
           fill(0,150,0);
           textSize(30);
           text("¡GANASTE!",335,380);
           fondoCuadrado.figuraFijaDescubierta();
     }
     fill(30);
     strokeWeight(5); 
     stroke(126);
     line(0,400,width,400);
     line(400,400,400,height);
  }
}
