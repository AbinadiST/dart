main(){

  obtenerUsuario('100', ( Map persona){ // aqui tenemos un CALLBACK, normalmente va al final de los argumentos 
                                        // si no tiene nombre la función, es función ANÓNIMA                                
  print(persona);

});

}

void obtenerUsuario ( String id, Function callback ){

  Map usuario = {

    'id'        : id,
    'nombre'    : 'Juan Carlos',
    'profesion' : 'Mecanico'
  };

  callback(usuario);
}
