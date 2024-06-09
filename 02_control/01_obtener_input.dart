import 'dart:io';

main(){

  //imprimir en terminal o cmd
  stdout.writeln('¿cual es tu nombre?');

  // Leer informacion | se detiene el programa para esperar la entrada de un usuario
  String? nombre = stdin.readLineSync();

  stdout.writeln('Tu nombre es: $nombre' );
  // también puede ser como lo siguiente |  stdout.writeln('Tu nombre es: ' + nombre! );
}