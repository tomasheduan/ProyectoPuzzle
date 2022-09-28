// Puzzle 
//Juego;


juego juegoNuevo;
void setup()
{
  size(800,800);
  //INSTANCIACION DEL JUEGO:
  juegoNuevo = new juego();
}
void draw()
{
  background(255);
  //LLAMADO AL UNICO METODO DE CLASE juego QUE GENERA HACE CORRER EL JUEGO:
  juegoNuevo.correrJuego();
}
