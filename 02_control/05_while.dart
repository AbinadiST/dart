import 'dart:io';

main(){

  String continuar = 'y';
  int contador = 0;


  while( continuar == 'y' ){ //regresa un valor booleano, realiza los LOOPS hasta que la condicion ya no se cumpla

  contador++;
  stdout.writeln('Contador: $contador');

  stdout.writeln('desea continuar? (y/n)');

  continuar = stdin.readLineSync() ?? 'n'; //se obtiene el valor ingresado por el usuario

  }


}