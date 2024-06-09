main(){

  // operadores de asignacion

  int a = 10; 
  int b = 1;

  b ??= 20; //Asigna el valor únicamente si la variable es NULL
  
  print(b); // da como resultado 1 xq está asignado y no es NULL





  // Operadores condicionales --------------------------------------------------------

  int c = 28; 
  String resp = c > 25 ? 'C es mayor a 25'  :  'C es menor a 25';
  // el signo ? indica SI LA CONDICION ES VERDADERA...   El signo : indica DE LO CONTRARIO...

  print(resp); // da como resultado C ES MAYOR A 25

  int d = b ?? a ?? 100;
  print(d); // si B es NULL, recibe el valor de A, si A es NULL recibe el valor de 100


  


  //Operadores relacioneles-------------------------------------------------------------
  //-Todos retornan un valor booleano

  /*
  
  >   Mayor que
  <   Menor que
  >=  Mayor o igual que
  <=  Menor o igual que

  ==  Revisa si dos objetos son identicos
  !=  Revisa si dos objetos son diferentes 

  */

  String persona1 = 'Fernando';
  String persona2 = 'Alberto';

  print( persona1 == persona2); // da como resultado FALSE
  print( persona1 != persona2); // da como resultado TRUE

  int x = 20;
  int y = 30;


  print( x > y ); // false
  print( x < y ); // true
  print( x >= y ); // false
  print( x <= y ); // true 

  //Operador de tipo -------------------------------------------------------------------

  int i = 10;
  String j = '10';

  print( i is int ); // true
  print( j is! int ); // true, simbolo ! está negando el elemento IS


}