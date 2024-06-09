import 'dart:io';
// se importa lo anterior para datos INPUT y OUTPUT
main(){

  stdout.writeln('Cuál es tu edad?');

  int edad = int.parse(stdin.readLineSync() ?? '0');
                //INT.PARSE = convierte lo que sea que está dentro en un valor numérico

  if ( edad >= 18){

    stdout.writeln('Eres mayor de edad, estas viejo');

  } else {

    stdout.writeln('Eres menor de edad');

  }

//Multiples IF --------------------------------------------------------

  if ( edad >= 21){

    stdout.writeln('Ciudadano');

  } else if ( edad >= 18){
    
    stdout.writeln('Mayor de edad');

  } else {
    stdout.writeln('Menor de edad');
  }

}