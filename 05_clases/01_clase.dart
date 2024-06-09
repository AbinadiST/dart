import 'clases/persona.dart';

void main() {
  
  //INSTANCIA = usamos la clase para crear una variable

  // Persona persona = new Persona(); 
  final persona  = new Persona(edad: 40, nombre: 'Juan Carlos'); // es lo mismo que lo de arriba

  final persona2 = new Persona.persona30('María');

  final persona3 = new Persona.persona40('María');

  
  // persona.nombre = 'Fernando';
  // persona.edad   = 33;
  // persona.bio    = 'Nació por ahí';


//es lo mismo que lo de arriba
  // persona..nombre = 'Fernando'
  //          ..edad = 33;
           // ..bio = 'Nacio por ahí';  // privado

  // persona.bio = 'Cambié el valor';


  print(persona2);

}


