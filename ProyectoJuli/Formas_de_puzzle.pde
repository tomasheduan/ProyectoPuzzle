// FORMAS DE PUZZLE
public class PiezasPuzzle{
  //PROPIEDADES
  color rojo;
  boolean uno=false;
  boolean dos=false;
  int posXfigurauno;
  int posYfigurauno;
  int posXfigurados;
  int posYfigurados;
  boolean figuraunoColocada=false;
  boolean figuradosColocada=false;
 //PCONSTRUCTOR DE LAS PIEZAS
  PiezasPuzzle(color r_, int posX_,int posY_){
  rojo=r_;
  posXfigurauno=posX_;
  posXfigurados=posX_+400;
  posYfigurauno=posY_;
  posYfigurados=posY_;
}

 //METODOS BOOLEANOS
 boolean trianguloUno(int xCuadrado, int yCuadrado){
   fill(rojo);
   int posIniX=posXfigurauno;
   int posIniY=posYfigurauno;
   int punto2X=posIniX;
   int punto2Y=posIniY+250;
   int punto3X=posIniX+250;
   int punto3Y=punto2Y;
   if(mouseX<400&&mouseY>400)
   {
     fill(0,255,0);
     if(mousePressed)
     {
       uno = true;
     }
   }
   else
   {
     fill(rojo);
   }
   if(uno&&mousePressed)
   {
     posXfigurauno = mouseX;
     posYfigurauno = mouseY;
      if(mouseX>(xCuadrado-2)&&mouseX<(xCuadrado+2)&&mouseY>(yCuadrado-2)&&mouseY<(yCuadrado+2))
     {
       fill(0,0,255);
     }
   }
   if(mouseY<400&&mousePressed==false)
   {
     uno=false;
   }
      triangle(posIniX,posIniY,punto2X,punto2Y,punto3X,punto3Y);
   if(posXfigurados>265&&posXfigurados<275&&posYfigurados>95&&posYfigurados<105&&mousePressed==false)
   {
     figuraunoColocada=true;
     return true;
   }
   return false;
 }
//////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////
boolean trianguloDos(int xCuadrado, int yCuadrado){
    fill(rojo);
    int posIniX=posXfigurados;
    int posIniY=posYfigurados;
    int punto2X=posIniX+250;
    int punto2Y=posIniY;
    int punto3X=punto2X;
    int punto3Y=punto2Y+250;
    if(mouseX>400&&mouseY>400)
     {
       fill(0,255,0);
       if(mousePressed)
       {
         dos = true;
         
       }
     }
     else
     {
       fill(rojo);
     }
      if(dos&&mousePressed)
     {
       posXfigurados = mouseX;
       posYfigurados = mouseY;
       if(mouseX>(xCuadrado-2)&&mouseX<(xCuadrado+2)&&mouseY>(yCuadrado-2)&&mouseY<(yCuadrado+2))
       {
         fill(0,0,255);
       }
     }
     if(mouseY<400&&mousePressed==false)
     {
       dos=false;
     }
     triangle(posIniX,posIniY,punto2X,punto2Y,punto3X,punto3Y);
     if(posXfigurados>265&&posXfigurados<275&&posYfigurados>95&&posYfigurados<105&&mousePressed==false)
     {
       figuradosColocada=true;
       return true;
     }
     return false;
  }
}
