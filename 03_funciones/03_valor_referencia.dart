

//FUNCION 1 ------------------------------------------------
String capitalizar ( String texto ){

  texto = texto.toUpperCase();
  return texto;
}

//FUNCION 2 ------------------------------------------------

// esto es una funcion que recibe un MAPA
Map<String, String> capitalizarMapa(Map <String, String> mapa){

  //ROMPER LA REFERENCIA
  mapa = { ...mapa }; //Esto esparce todas sus propiedades y se crea un nuevo MAPA

  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre';
  mapa['apellido'] = mapa['apellido']?.toUpperCase() ?? 'No hay nombre';

  return mapa;

}

void main(List<String> args) {
  
  String nombre = 'fernando';
  String nombre2 = capitalizar(nombre); //* se inicializa con una función ej 1

  print(nombre);
  print(nombre2);


  // MAPA -------------------------------------------------------

  Map<String, String> persona = {
    'nombre': 'Tony Stark',
    'apellido' : 'Fernandez'
  };


  //se inicializa 
  Map<String, String> persona2 = capitalizarMapa( persona ); //* se inicializa con una funcion ej 2

  print(persona);  // para acceder sólo al valor
  print(persona2);

}

/*
Mapas, Arreglos, Instancias de clases son mandadas por REFERENCIA 
*/