import 'dart:io';

void main(List<String> args) {
  while (true) {
    String mensagem = "QUANTIDADE DE PARES E ÍMPARES";
    print('Digite número final do intervalo ou X p/sair:');
    String v1Str = stdin.readLineSync()!;
    if (v1Str.toLowerCase() == 'x') {
      break;
    }
    int v1 = int.parse(v1Str);
    int tPar = 0;
    int tImpar = 0;

    for (int i = 1; i <= v1; i++) {
      if (i % 2 == 0) {
        tPar = tPar + 1;
      } else {
        tImpar = tImpar + 1;
      }
    }
    print('''  
      =======================================================      
      $mensagem
      Intervalo 1 a $v1
      Total pares: $tPar
      Total ímpares: $tImpar
      =======================================================
      ''');
  }
}
