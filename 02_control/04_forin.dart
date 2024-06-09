main(){

List<String> listado = ['Batman', 'Superman', 'Mujer Maravilla'];

// for (int i = 0; i < listado.length; i++){
//   print(listado[i]);
// }

for (String nombre in listado ){ // es lo mimso que el código de arriba

  print(nombre);
  

}

print(listado.length); //Conoer el tamaño del listado

// a diferencia del otro FOR, este FOR IN lo simplifica sólo obteniendo el LISTADO como parámetro y 
// llamandolo como NOMBRE para que se pueda imprimir todos los valores en el LISTADO

}