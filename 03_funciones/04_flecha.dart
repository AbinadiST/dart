void main() {
  int a = 10, b = 20;
  int resultado = sumarFlecha(10, 20);

  List<int> listado = [1,2,3,4,5,6,6,7,8,9,10,10,1];


// LAMBDA FUNCTION-------------------------------------------------------

  var nuevoListado = listado.where((numero){ 
    return numero > 4;  // WHERE indica q regrese elementos que cumplan cierta condición
  });

// es lo mismo que el de arriba pero con LAMBDA
  var nuevoListado1 = listado.where( (numero) => numero > 4); 

  print(nuevoListado1.toSet());// para tener sólo numeros únicos agregamos .TOSET()
}

// misma funcion ------------------------------------------------------------


int sumar( int x, int y ){
  return x + y;
}

int sumarFlecha(int x, int y) => x + y;