
class Location{
  final double lat;
  final double lng;

  const Location(this.lat, this.lng);
  //una CONSTANTE es compilada en tiempo de compilación 

}


main(){

  final sanFrancisco1 = new Location(18.2323, 39.9000);
  final sanFrancisco2 = new Location(18.2323, 39.9001);
  final sanFrancisco3 = new Location(18.2323, 39.9001);

  print(sanFrancisco1 == sanFrancisco2); // da falso
  print(sanFrancisco2 == sanFrancisco3); // da falso, a pesar que son valores iguales, están en memoria diferentes

  const sanFrancisco4 = const Location(18.2323, 39.9000); //cambiamos el NEW por CONST xq DART nos indica que debe ser CONST
  const sanFrancisco5 = const Location(18.2323, 39.9001);
  const sanFrancisco6 = const Location(18.2323, 39.9001);

  const berlin = const Location(18.2323, 39.9001);

  print(sanFrancisco4 == sanFrancisco5); // da falso
  print(sanFrancisco5 == sanFrancisco6); // da VERDADERO porque apunta al mismo lugar de memoria
  print(berlin == sanFrancisco6); // da VERDADERO porque apunta al mismo lugar de memoria



}