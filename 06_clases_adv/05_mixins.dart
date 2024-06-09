
//Los MIXINGS no pueden ser INSTANCIADOS y no pueden crear CONSTRUCTORES 
//Los MIXINGS están hechos para heredar o transferirle sus propiedades o métodos a otras clases
mixin Logger{

  void imprimir( String texto ){

    final hoy = DateTime.now();
    print('$hoy :::: $texto');

  }
  
}


mixin Logger2{

  void imprimir2( String texto ){

    final hoy = DateTime.now();
    print('$hoy :::: $texto');

  }
  
}

//Para agregar el otro MIXING(LOGGER 2) sólo agregamos coma y el nombre, ej WITH LOGGER, LOGGER2{}
abstract class Astro with Logger{ // los MIXING los heredamos con la palabra WITH

  String? nombre;

  Astro() {
    imprimir('-- Init del Astro --');

  }

  void existo(){

    imprimir('-- Soy un ser celestial y existo--');

  }

}

//Para extender de los MIXINGS realizamos lo siguiente usando la palabra WITH
class Asteroide extends Astro with Logger, Logger2 {

  String? nombre;

  Asteroide( this.nombre ){
    // imprimir('soy $nombre');
    imprimir2('soy $nombre'); //Método del MIXING( LOGGER 2 )

  }

}

main(){

  final ceres = new Asteroide('Ceres');

}