

main(){

  List<int> lista = [1, 2, 3, 4, 5];
  List<int>? lista2;  // null
  List<int> lista3 = [3, 1, 2, 15, -10];
  List<String> nombres = ['Tony', 'Peter'];


  print('Lenght: ${ lista.length }');
  print('First: ${ lista[0] }');
  print('First: ${ lista.first }');
  print('First: ${ lista.last }');

  print('is empty: ${ lista.isEmpty}');
  print('is empty?: ${ lista2 == null }');

  print('asMap: ${ lista.asMap()[2]}'); //MAP tiene dos valores: KEY y VALUE
  //aqui busca el valor de la posición 2 que sería como respuesta 3, sin ese '[2]' imprime el mapa entero

  Map listaMapa = lista.asMap();
  print('ListaMapa: ${ listaMapa[4]}');

  Map nombreMapa = nombres.asMap(); // regresa el listado NOMBRES como un MAPA
  print('NombreMapa: ${ nombreMapa[1]}');

  print('indexOf: ${ nombres.indexOf('Peter') }'); // regresa el número 1

  // int mayor3 = lista.indexWhere( (numero) {

  //   if( numero > 3){

  //     return true;

  //   }else {

  //     return false;

  //   }

  // });


  //Esta función es exactamente lo mismo que el de arriba
  int mayor3 = lista.indexWhere((numero) => (numero > 3) ? true : false); //si no encuentra el valor REGRESARÁ -1
  //Como resultado da 3 PERO quiere decir que es la posición 3 de LISTA(en esa posición esta el # 4) 

  print('Remove: ${ nombres.remove('Tony')}'); // REGRESA true porque ya lo hizo 
  print('Remove: ${ nombres}'); // Aquí ya imprime sin el TONY


  lista.shuffle(); // posiciona aleatoremente los elementos
  print('Shuffle: $lista'); //comprobar nuevo orden 

  lista3.sort(); // Ordena el listado de menor a mayor
  print('Sort: $lista3');

  print('Reverese: ${ lista3.reversed.toList()}'); // al imprimir un ITERABLE lo convertimos a LIST

  nombres.forEach((nombre) { //esto solo modifica los elementos, no el LISTADO ORIGINAL
 
    nombre = nombre.toUpperCase();
    print(nombre);

  });

  print('Listado: $nombres'); // imprime PETER pero en minúscula debido que no está modificandolo como MAYÚSCULA en el listado orignal


  final newList = nombres.map((nombre) => nombre.toUpperCase() ).toList(); // imprime un ITERABLE y lo comvertimos en LIST
  //esto es un nuevo listado que apunta a un nuevo lugar de memoria 
  print('newList: $newList');

}