
class Persona{

  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}


class Cliente extends Persona{

  String? direccion;
  List ordenes = [];

  // ':' en el CONSTRUCTOR indica la ejecución del proceso ANTES de que se cree la INSTANCIA
  Cliente(int edadActual, String nombreActual):
    super(nombreActual, edadActual); //Mandamos los valores de NOMBRE y EDAD a CONSTRUCTOR PERSONA por POSICION
  //SUPER se utiliza para llamar PROPIEDADES ó METODOS de la CLASE PADRE  
}
main(){

  final pedro = new Cliente(33, 'Pedro');

  pedro.imprimirNombre();

}