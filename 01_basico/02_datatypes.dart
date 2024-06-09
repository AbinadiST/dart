
import 'dart:ffi';

main(){

  // numeros ----------------------------------------------------

  int a = 10;
  double b = 5.5;

  int? c = null;  // cuando un valor es NULL tiene que tener este símbolo "?"

  int _a = 30;
  double $b = 40;

  double resultado = _a + $b; // Cuando suma un INT y DOUBLE, el resultado siempre será DOUBLE

  print( resultado );

  //STRINGS -------------------------------------------------------

  String nombre  = 'Tony'; //con comillas sencillas o dobles da mismo resultado
  String nombre2 = "Tony"; //con comillas sencillas o dobles da mismo resultado
  String nombre3 = "O'Connor"; // si tenemos que utilizar alguna comilla dentro de otras comillas podemos hacer lo que se muestra
  String apellido = 'Stack';

  String nombreCompleto = '$nombre $apellido';
  
  String multilinea = ''' 
  Hola mundo  
  Cómo estás?
  $nombreCompleto
  O'Connor''';

  print(multilinea);

  // BOOLEANS ----------------------------------------------------

  // *** DYNAMIC = acepta cualquier tipo de dato

  bool isActive = true;
  bool isNotActive = !isActive; // al colocar el símbolo ! indica NEGACION

  print(isNotActive);


  // LISTS --------------------------------------------------------------------

  List<String> villanos = ['Lex', 'Red Skull', 'Doom']; // Listados empiezan en 0
  //                          0       1           2

  //var villanos = ['Lex', 'Red Skull', etc] también se puede organizar así el LIST ó ARREGLO
  villanos [0] = 'Superman';

  villanos.add('Duende verde '); // agregamos un elemento al final de la LISTA 
  villanos.add('Duende verde ');
  villanos.add('Duende verde ');
  villanos.add('Duende verde ');

  print(villanos);

  var villanosSet = villanos.toSet(); // Lo convertimos en SET
  print(villanosSet.toList()); // Lo convertimos en LIST pero ya sin los duplicados


  // SETS ----------------------------------------------------------------------------------

  /*la diferencia entre SETS y LISTS es que en LISTS se pueden repetir elementos y en SETS no */

  Set<String> villanos2 = {'Lex', 'Red Skull', 'Doom'};

  villanos2.add('Duende verde');
  villanos2.add('Duende verde');
  villanos2.add('Duende verde');
  villanos2.add('Duende verde');

  print(villanos2);

  // MAPS ------------------------------------------------------------
  /*Los mapas tienes dos valores, llaves y su valor */

  Map<int, dynamic> ironman = {

    1 : 'Tony Stark',
    2 : 'Inteligencia y el dinero',
    3 : 9000,

  };

  print(ironman[3]); // para acceder a cierta valor lo haremos como se muestra en esta línea
                      // si el MAP fuera de STRINGS se pondria... PRINT(IRONMAN['NOMBRE']); para acceder a su valor
    
  Map<String, dynamic> capitan = new Map(); //esta manera de MAP no marca OBSOLETO xq es una manera RAPIDA
                                            // para crearlo y definir condiciones

  capitan.addAll({
    'nombre': 'Steve',
    'poder' : 'Soportar droga sin morir',
    'nivel' : 5000
  }); 
    
  print(capitan);

}