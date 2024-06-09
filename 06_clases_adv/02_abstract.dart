
//Clases ABSTRACT no se deben crear nuevas INSTANCIAS

abstract class Vehiculo{

  bool encendido = false;

  void encender(){
    encendido = true;
    print('Vehículo encendido');
  }

  void apagar(){
    encendido = false;
    print('Vehículo apagado');
  }

  bool revisarMotor(); 
  //aquí sólo estamos indicando que tendrá una función llamado REVISARMOTOR()

}



class Carro extends Vehiculo {

  int kilometraje = 0;
  
  // en la clase CARRO aparece ERROR al dar CLIC + . nos aparece si sobreescribimos el método padre
  @override // la aplicacion corre igual sin el OVERRIDE pero se recomienda agregarlo si sobreescribimo un método padre 
  bool revisarMotor() {
    print('Motor Ok');
    return true;
  }


}

main(){

  final ford = new Carro(); // aquí estamos instanciamos

  ford.encender();
  ford.apagar();

}