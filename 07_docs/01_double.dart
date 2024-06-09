
//Cuando en la documentación menciona THIS indica la variable en cuestión que estamos agregando la propiedad
main(){

  double numero = 3.1416;
  double infinito = double.infinity; //se esta haciendo uso de propiedades staticas 
                                    //se esta describiendo el nombre de la clase 

  print('Firma: ${ numero.sign } :: $numero');  // NUMERO.SIGN = Regresa un '1' por la documentación 
  print('isFinite: ${ numero.isFinite } :: $numero');  
  print('isFinite: ${ numero.isFinite } :: $infinito');  

  print('ceil: ${ numero.ceil() } :: $infinito');  //CEIL es el siguiente numero pero entero 
  
  print('ceilToDouble: ${ numero.ceilToDouble() } :: $infinito');  // imprime el siguiente número pero en DOUBLE

  print('round: ${ numero.round() } :: $infinito');  //DOC = Dart -> dart:core -> double -> round abstract method | Para más info.
  print('round: ${ numero.roundToDouble() } :: $infinito');  //DOC = Dart -> dart:core -> double -> round abstract method | Para más info.
  
  print('clamp: ${ numero.clamp(1, 3) } :: $infinito');  


}
