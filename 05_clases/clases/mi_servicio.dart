
/**1.- El constuctor privado( MISERVICIO._INTERNAL() ) lo que hace es generar una instancia 
 * 2.- Generar una propiedad STATIC privada que me sirva para mantener la INSTANCIA EN MEMORIA o 
 *     REFERENCIA EN MEMORIA de mi servicio previamente creado ej. NEW MISERVICIO._INTERNAL();
 * 3.- Crear el FACTORY de MISERVICIO() para que regresa la instancia _SINGLETON que es la instancia de la CLASE
*/

class MiServicio{

  static final MiServicio _singleton = new MiServicio._internal();
  //STATIC mantiene el mismo espacion en MEMORIA
  //Al ser privado (_singleton) yo puedo controlar la forma en como eso lo llamen

  factory MiServicio(){

    return _singleton;
  }


  MiServicio._internal(); //CONSTRUCTOR PRIVADO, solo se usa dentro de la clase 

  String url = 'https:abc';
  String key = 'ABC213';

}