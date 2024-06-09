
main(){

  //Future = una tarea asíncrona que se resolverá en un FUTURO

  Future<String> timeout = Future.delayed( Duration(seconds: 3), (){  //() {} esto es una función anónima
    //<String> = no se dice: regresa un STRING, sino resuelve un STRING
    print('3 segundos despues');

    return 'Retorno del future';
  });

  //timeout.then( (texto) => print(texto) );    // THEN = cuando el FUTURE termine, imprime RETORNO DEL FUTURE
  timeout.then( print ); // esto es exactamente lo mismo que lo de arriba 

  print('fin del main');

}

