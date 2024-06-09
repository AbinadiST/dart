/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

main() {

  // Ejemplo: 
  // Crear una función para imprimir STDOUTS en lugar de 
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada

  procesarUsuario(1500, 1);
  procesarUsuario(1800, 2);

  
}


void imprimir ( String texto) => stdout.writeln(texto);

String? leer() => stdin.readLineSync();

void procesarUsuario(double salario, int i){

    imprimir('=========== Usuario $i =============');


  imprimir('¿Cúal es su nombre?');
  String nombre = stdin.readLineSync() ?? '';

  imprimir('¿Qué edad tienes?');
  String edad = stdin.readLineSync() ?? '';
  
  imprimir('¿En qué país naciste?');
  String pais = stdin.readLineSync() ?? '';
  

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad'  : edad,
    'pais'  : pais
  };

  stdout.writeln('Usuario $i sin deducciones');
  stdout.writeln( usuario.toString() );

  //double salario     = 1500; se comentó la linea xq ya lo estamos pidiendo como argumento
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario']     = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  imprimir(usuario.toString());

}