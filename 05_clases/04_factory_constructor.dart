
class Rectangulo{

  int? base;
  int? altura;
  int? area;
  String? tipo; // cuadrado base = altura, rectangulo base != altura

  factory Rectangulo( int base, int altura ){ //en FACTORY no lleva ';' en el constructor 
  //los FACTORY jamas crean una INSTANCIA de su clase, pueden regresar una nueva INSTANCIA ó una INSTANCIA ya generada de la misma clase
  
  if( base == altura ){

    return Rectangulo.cuadrado(base);

  }else{

    return Rectangulo.rectangulo(base, altura);

  }

  }

  Rectangulo.cuadrado( int base ){
    this.base   = base;
    this.altura = base;
    this.area   = base * base;
    this.tipo   = 'Cuadrado';
  }

  Rectangulo.rectangulo( int base, int altura ){
    this.base   = base;
    this.altura = altura;
    this.area   = base * altura;
    this.tipo   = 'Rectangulo';

  }

  @override
  String toString() {
    
    return { 'base': base, 'altura': altura, 'area': area, 'tipo': tipo }.toString(); 
    //Aquí nos pide regresar un STRING pero esto es un MAP, TOSTRING resuelve el problema

  }

}

main(){

  final figura = new Rectangulo(10,15);
  
  print(figura);

}