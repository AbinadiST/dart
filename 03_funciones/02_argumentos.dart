
//Argumentos posicionales son OBLIGATORIOS, si lo queremos opcionales sería VOID SALUDAR ( STRING? MENSAJE)
//el NULLSAFTE al menos en este caso, tenemos que poner un STRING ó NULL(ponerlo literal) para que no marque error

void saludar( String mensaje, [String nombre = '<insertar nombre>', int edad = 20] ){  // <insertar nombre> es un valor por defecto en caso si no se especifica
  // ARGUMENTOS POSICIONALLES Y OPCIONALES se identifican ENTRE CORCHETES como arriba | ó INT? EDAD | para valor NULL
  // creamamos FUNCIONES para reutilizar el código 
  // hay 2 tipos de ARGUMENTOS
  // Posicional (son OBLIGATORIOS) ej: void saludar ( STRING mensaje ) 
  // Con Nombre: void saludar ( {mensaje} ) tienen llaves

print('$mensaje $nombre - $edad'); 

}



//Argumentos por nombres --------------------------------------------------------------------------------

void saludar2(String mensaje, { required String nombre,  int veces = 10 }) //obligamos el ARGUMENTO con REQUIRED
 {

    print('Saludar2: $mensaje, $nombre - $veces');

}

void main(List<String> args) {
  
  saludar('Hola', 'Fernando', 35 );
  //ARGUMENTO = es una variable que enviamos internamente a una FUNCION

  saludar2('Saludos', veces: 20, nombre: 'Tony');  // CTRL + BARRA ESPACIADORA nos muetra los ARGUMENTOS que puede recibir
}