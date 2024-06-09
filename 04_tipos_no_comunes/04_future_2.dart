
import 'dart:io'; //paquete que contiene FILE

void main() {
  
  File file = new File(Directory.current.path + '/04_tipos_no_comunes/assets/personas.txt');
  //Cuando es WINDOWS sería con \\ doble slash invertida en lugar de '/' ej 
  //  \\04_tipos_no_comunes\\assets\\personas.txt

  // para MAC y LINUX sería slash normal


  //print(Directory.current.path); se imprime mi directorio

  Future<String> f = file.readAsString();

  //f.then((data) => print(data)); es lo mismo que lo de abajo
  f.then( print );


  print('fin del main');
}