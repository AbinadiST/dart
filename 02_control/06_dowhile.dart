import 'dart:io';

main(){

  String continuar = 'y';
  int contador = 0;

  do { // forzasamente se tiene que cumplir el siguiente código, 
  
  contador++;
  stdout.writeln('Contador: $contador'); //metodo para imprimir

  stdout.writeln('desea continuar? (y/n)');// metodo para imprimir

  continuar = stdin.readLineSync() ?? 'n'; //obtiene el valor ingresado por el usuario

  } while( continuar == 'y' ); // si se cumple la condición vuelve a realizar el CICLO


}