

//al ver STATIC podemos acceder a las propiedades ó métodos sin INSTANCIAR LA CLASE

class Herramientas{

  static List<String> listado = ['Martillo', 'Llave inglesa', 'Desarmador'];
  //agregamos STATIC para acceder a él mediante: Herramientas.listado.forEach( print );
  //static forman parte de la CLASE y no de la INSTANCIA

  //** El problema es cuando queremos llamar ese listado y previamente habíamos agregado 
  //** un elemento a ese LISTADO, ese elemento agregado aparecerá en otra parte 

  static void imprimirListado() => listado.forEach( print );
  //ya no realizamos => HERRAMIENTAS.listado.forEach(print) porque ya estamos dentro de la clase
}



main(){

// ACCEDEMOS al listdo de la manera comencional--------------------------------

// final herr = new Herramientas();
// herr.listado.forEach( print ); //Imprimimos el listado 

Herramientas.listado.add('Tenazas');
Herramientas.listado.forEach( print );

Herramientas.imprimirListado(); //estamos llamando al método 

}