import 'dart:io';
main(){

  for(int i = 0; i < 10; i++){

    print('Hola mundo ${ 2 * 10 }');
  }


// tarea... realizar tablas de multiplicar 

  stdout.writeln('Cuál es la tabla a multiplicar?');

  int base = int.parse(stdin.readLineSync() ?? '0');

  for( int i = 1; i <= 10; i++){

    print('$base * $i = ${ base * i}');
    // al estar dentro de llaves, ya no se pone '$' xq estamos dentro de codigo DART
  }
}