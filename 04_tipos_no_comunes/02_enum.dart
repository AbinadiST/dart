void main() {
  
  Audio volumen = Audio.bajo;

  switch( volumen){

    case Audio.bajo : print('Volumen bajo'); break;
    case Audio.medio: print('Volumen medio'); break;
    case Audio.alto : print('Volumen alto'); break;

  }
}

enum Audio{
//  siempre se capitaliza la primera letra, en este caso 'Audio'
  bajo, 
  medio, 
  alto
}