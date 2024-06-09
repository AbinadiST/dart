
class Persona {

//Estructura de una clase

// Campos ó propiedades--------------------------------------------------------

String? nombre;
int? edad;
String _bio = 'Hola, soy una propiedad privada.';

// Get y Sets-------------------------------------------------------------------

//*********** GET ******************

// String get bio {   // no llevan parentésis, Especificar tipo de dato que regresa
//   return _bio.toUpperCase();   //regresa un STRING, 
// }

String get bio => _bio.toUpperCase(); //esto es lo mismo que lo de arriba

//************ SET ******************

// set bio( String texto ){ //SET = método que establece valores, no regresa nada
//   _bio = texto;
// }

set bio ( String texto ) => _bio = texto; // esto es exactamente que lo de arriba


// Constructores----------------------------------------------------------------

//*************CONSTRUCTORES ********************/
//!Ante cualquier cosa, primero se ejecuta el CONSTRUCTOR
//es un método que se llama en el momento de la instancia de una clase 
//debe tener el nombre exactamente igual al de la clase 

// Persona( int edad, String nombre ){

//   this.edad = edad;   //THIS.EDAD hace referencia a la propiedad de la clase y EDAD al argumento del constructor
//   this.nombre = nombre;
// }
Persona( {this.edad = 0, this.nombre = 'Sin nombre'} ); // esto es exactamente lo mismo que el CONSTRUCTOR DE ARRIBA
//ARGUMENTO POSICIONAL = son obligatorios
//ARGUMENTO POR NOMBRE {} = son opcionales
 
  // print('Constructor');

//*********CONTSTRUCTORES CON NOMBRE *****************/
Persona.persona30( this.nombre ){ //este es una sobrecarga de constructores, llamados CONSTRUCTORES CON NOMBRE
  this.edad = 30;
}

Persona.persona40( String nombre ){  // constructor tradicional
  this.edad = 40;
  this.nombre = nombre;
}



// Métodos(son funciones pero dentro de una clase así se les llama)---------------
@override
  String toString() => '$nombre, $edad, $_bio';

  // THIS.NOMBRE = hace referencia al NOMBRE donde está los CAMPOS ó PROPIEDADES (tipo de dato) de la clase
}