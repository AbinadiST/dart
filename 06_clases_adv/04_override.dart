
class Persona{

  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}


class Cliente extends Persona{

  String? direccion;
  List ordenes = [];

  // ':' en el CONSTRUCTOR indica la ejecución del proceso antes de que se cree la INSTANCIA
  Cliente(int edadActual, String nombreActual):
    super(nombreActual, edadActual);

    @override
    void imprimirNombre(){
      super.imprimirNombre(); // SUPER indica que primero imprimirá el método de la clase PADRE
      print('Cliente: $nombre, ($edad)');
    }

}
main(){

  final pedro = new Cliente(33, 'Pedro');

  pedro.imprimirNombre();

}