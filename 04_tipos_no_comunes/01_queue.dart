
import 'dart:collection';

main(){

  Queue<int> cola = new Queue();
  //QUEUE es una lista o cola que se utiliza de manera secuencial

  cola.addAll([10,20,30,40,50]);

  print(cola);

  Iterator i = cola.iterator; 
  // asignamos en 'i' el índice para controlar las posiciones que se encuentra en la cola

  while( i.moveNext() ){

    print(i.current); //obtenemos el valor actual del ITERATOR

  }

}