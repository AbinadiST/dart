
class Cuadrado{

  final int lado;
  final int area;

  //ERROR
  //Cuadro( int lado, int area ){
  // this.lado = lado;
  // this.area = area;
  // }

  // Cuadrado( this.lado, this.area );

  Cuadrado( int lado ):  // los dos puntos : indica que se puede inicializar el valor AREA cuando recibimos sólo 1 ARGUMENTO, el LADO
    this.lado = lado, 
    this.area = lado * lado;
}


void main() {

  final cuadrado = new Cuadrado(10);

  print(cuadrado.area);
  
}