
import 'dart:io';


//* si vamos a usar el AWAIT siempre debe estar entro de una función ASYNC
void main() async {
  
  String path = Directory.current.path + '/04_tipos_no_comunes/assets/personas.txt';

  String texto = await leerArchivo(path); 
  //AWAIT con esto estamos esperando su resolución, al resolverlo, lo anexará a la variable TEXTO
  print(texto);


  print('Fin del main');
  
}
// ASYNC = Transforma una función comun y corriente a una misma función pero RETORNA un FUTURE y ya podemos hacer el .THEN .CATCHERROR etc 
Future<String> leerArchivo( String path ) async {
//si el FUTURE resuelve un INT hay que hacer un tipo de dato tipo INT en la línea 10 donde está el AWAIT

  File file = new File( path );

  return file.readAsString();



}