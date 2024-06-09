

main(){

  String nombre = 'Fernando';
  String apellido = 'Herrera';

  String nombreCompleto = '$nombre' ' ' 'Herrera'; //otra manera de concatenar | Fernando Herrera

  print('String: $nombreCompleto');

  print('Length: ${ nombreCompleto.length }');
  print('Contains F: ${ nombreCompleto.contains('F', 0) }');
  print('EndsWith a: ${ nombreCompleto.endsWith('a') }');

  print('PadLeft: ${ nombreCompleto.padLeft(20,'...')}');
  print('PadRight: ${ nombreCompleto.padRight(20,'...')}');
 
  //OPERADORES Y MÁS MÉTODOS -----------------------------------------------------------

  print('Operador []: ${ nombreCompleto[10]}'); // imprime 'e' ya que las LISTAS empiezan con 0
  print('Operador *: ${ nombreCompleto * 2 }'); //duplica el valor del STRING, aparece dos veces 
  print('Operador *: ${ '*' * 10}'); // imprime * diez veces, se indica que ese caracter se repita

  print('ReplaceAll: ${ nombreCompleto.replaceAll(RegExp(r'e'), 'a')}');

  print('SubString: ${ nombreCompleto.substring(0,5)}...'); // se corta parte de la variable
  print('indexOf F: ${ nombreCompleto.indexOf('F')}'); // indica la posisción donde está 'F'

  print('Split: ${ nombreCompleto.split(' ')}'); //Corta el String
  print('Split: ----${ nombreCompleto.split(' ')[1]}----'); //[1] = toma la posicion 2, es decir HERRERA

  print('Capitalizar: ${ nombreCompleto[ nombreCompleto.length-1].toUpperCase()}');

}