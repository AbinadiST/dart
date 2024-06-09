
main(){

  final persona = {

    'nombre'   : 'Fernando',
    'apellido' : 'Herrera',
    'edad'     : 33
  };

  final direccion = {

    'ciudad' : 'Ottawa',
    'pais'   : 'Canadá'

  };

  print('Persona $persona');
  print('Lenght: ${ persona.length }'); // imprime cuantos pares de valores tenemos internamente
  print('Keys: ${ persona.keys.toList() }'); // imprime un ITERABLE por los parentesis, lo podemos convertir en TOSTRING, TOSET, TOLIST
  print('Keys: ${ persona.values}'); 

  persona.addAll( direccion ); // lo que está en DIRECCION será ahora también parte de PERSONA
  print('AddAll: $persona'); //imprime los mapas PERSONA y DIRECCIÓN 

  persona.remove('pais');
  print('remove: $persona'); //elimina el PAIS

  //siempre que veamos un WHERE, indica que barrera con cada uno de los elementos
  persona.removeWhere((key, value) => (key != 'nombre') ? true : false); // es lo mismo que lo de abajo 

  // persona.removeWhere((key, value){
  //   if ( key != 'nombre'){
  //     return true;
  //   }else{
  //     return false;
  //   }

  // });

  print('removeWhere: $persona');



  //METODOS DE LOS MAPAS CONTINUACIÓN ---------------------------------------------------------------------

  persona.forEach((key, value) { 
    print('Key:  $key,   value: $value'); //Solo imprime 'NOMBRE FERNANDO' debido a que en linea 30 REMOVIMOS todo el mapa
                                          //si comentamos esa línea, ya aparecerá todos sus valores en este PRINT
  });


  //todo reforzar este último ejemplo del video ---------------------------------------------------------------
  
  final nuevoMapa = persona.map((key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });

  print('persona map: $nuevoMapa');


}