

import 'clases/mi_servicio.dart';

main(){

  final spotifyService1 = new MiServicio();
  print(spotifyService1.url);   //imprime el valor por defecto en el archivo MI_SERVICIO.DART
  spotifyService1.url = 'https://api.spotify.com';
  
  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'https://api.spotify.com/v2';

  print( spotifyService1 == spotifyService2 ); //Falso 
                                              //con SINGLETON es VERDADERO xq apuntan al mismo espacio de memoria

  print( spotifyService1.url);
  print( spotifyService2.url);

}