main(){

  for(int i=0; i < 10; i++){

    if( i == 2){

      continue; // continua con el ciclo pero sin el 5, es decir se lo salta 

    }
    print(i);

    if( i == 5){

      break; // se sale del ciclo FOR (ya que está dentro de ahí)
    }

  }


}