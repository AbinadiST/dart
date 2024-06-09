//STREAM es una corriente de datos
import 'dart:async';

// los STREAMCONTROLLER son ASYNC

void main() {

  //sin el BROADCAST() solo puede existir un LISTEN puede estar escuchando el STREAMCONTROLLER

  final streamController = new StreamController<String>.broadcast(); //BROADCAST() = MULTIPLES SUSCRIPCIONES, vario LISTEN
  //Se realiza el TIPADO, es decir, acepta cierta información, por ej. STRING
  //realizamos TIPADO para evitar errores dificiles de rastrear si todo es DYNAMIC

  streamController.stream.listen(
    (data) => print('despegando $data'), //El LISTEN necesita una función para ejecutar cuando recibe un valor
    onError: (err) => print('Error $err'),
    onDone: () => print('Misión completa'), // se ejecuta despues del STREAMCONTROLLER.CLOSE() 
                                            // se usa para mostrar un SUCCES o un CHECK VERDE indicando que terminó, etc.

    cancelOnError: false, // para cancelar todo el STREAM al tener un errror | no se cancela todo el STREAM sin el CANCELONERROR
                          // false = no cancela todo el STRAM, TRUE = cancela todo 

    //aquí adentro se espifica lo que haremos al recibir información

    /* El manejo de los ERRORES también debe estar definido en los STREAMCONTROLLER*/
  
   );

   //SEGUNDO LISTEN -----------------------------------------------------------------------------------------------------

    streamController.stream.listen(
    (data) => print('despegando Stream 2 $data'), 
    onError: (err) => print('Error Stream 2 $err'),
    onDone: () => print('Misión completa Stream 2'), 
                                          
    cancelOnError: false, 

     );

     //SINK ------------------------------------------------------------------------------------------------------


   streamController.sink.add('Apollo 11');  //SINK = PUNTA de entrada de STREAM | Se agrega informacion al inicio del rio
   streamController.sink.add('Apollo 12');  
   streamController.sink.add('Apollo 13');  
   
   streamController.sink.addError('Houston, Tenemos un problema');  
   // va relacionado con el CANCELONERROR donde sale totalmente del STREAM

   streamController.sink.add('Apollo 14'); // el APOLLO 14 Y 15 ya no se ejecuta debido a que tenemos el ADDERROR  
   streamController.sink.add('Apollo 15');  
   

   streamController.sink.close(); // si ya sabemos que ya no recibiremos más información, debemos cerrar el STREAM

   /* ya no debemos tener más información despues dell CLOSE porque marcará error*/


   print('fin del main');
  
}

/* codigo secuencial es MÁS RÁPIDO que código ASÍNCRONO (ASYNC) */