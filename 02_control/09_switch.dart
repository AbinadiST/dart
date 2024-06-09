import 'dart:math';

main(){

  int rnd = Random().nextInt(7); // se nos pide el valor máximo que puede tener(osea 7)


  print(rnd);

  switch(rnd){ // 0,1,2,3,4,5,6 ó se puede validar con nombres 'juan' 'pedro' etc

    case 0: print('lunes');
    break;

    case 1: print('martes');
    break;

    case 2: print('miércoles');
    break;

    case 3: print('jueves');
    break;

    case 4: print('viernes');
    break;

    case 5: print('sábado');
    break;

    case 6: print('domingo');
    break;
    
    default: print('No es un día de la semana');

  }

}