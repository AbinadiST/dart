void main() {
  
  var a   = 10;
  final double b = 10; // FINAL DOUBLE también es válido
  const double c = 10;


  // dynamic vs object
  // final vs const 
  // final = no lo estamos diciendo a DART que va a cambiar, 
  // lo cual no tendrá los métodos para 

  final personasFinal = ['Juan', 'Pedro', 'Fernando'];
  const personasConst = ['Juan', 'Pedro', 'Fernando'];

  personasFinal.add('Maria');
  personasConst.add('Maria');  // marcaría error

  //cuando creamos una LISTA que no va a ser modificada JAMÁS, podemos usar CONST
  //cuando definimos la LISTA y únicamente queremos modificar sus valores, podemos usar FINAL


  //final List<String> personasFinal = ['Juan', 'Pedro', 'Fernando'];
  //List<String> personasFinal = const ['Juan', 'Pedro', 'Fernando'];

  //En la lista de arriba es válido el lugar donde se pone el LIST y CONST
}