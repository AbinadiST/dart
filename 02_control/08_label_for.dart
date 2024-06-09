main(){

  //podemos ingresar cualquier nombre pero que lleve ':' donde indica que es un LABEL
  outerLoop:  //etiquetamos al FOR para hacer referencia de donde queremos salir, es decir en el BREAK
  for (int i = 0; i < 5; i++){

    print('Valor de i: $i');

    innerLoop:
    for(int j = 0; j < 5; j++){

      print('Valor de j: $j');

      if( j == 2){

        break outerLoop; // Terminamos pero del LOOP principal porque lo etiquetamos, 
                        // si queremos salir del LOOP interno (u otro LOOP) solo lo etiquetamos

      }
    }

  }


}