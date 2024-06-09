main(){

  //Future = una tarea asíncrona que se resolverá en un FUTURO

  Future<String> timeout = Future.delayed( Duration(seconds: 3), (){
    
    if ( 1 == 1){
      throw 'Auxilio, explotó esta cosa';  //THROW = lanzamos un error 
    }

    return 'Retorno del future';
  });

  //timeout.then( (texto) => print(texto) );    // THEN = cuando el FUTURE termine, imprime RETORNO DEL FUTURE
  timeout.then( print )
    .catchError( (error) => print(error) ); // menos código sería .catchError( print );

  print('fin del main');

}
