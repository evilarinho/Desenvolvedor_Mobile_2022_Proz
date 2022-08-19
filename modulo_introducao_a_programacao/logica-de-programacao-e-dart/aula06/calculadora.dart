import 'dart:io';

void main(List<String> args) {
  double resultado = 0.00;

  while (true) {
    String mensagem = "CALCULADORA BÁSICA";
    print('Digite o primeiro número ou X p/sair:');
    String v1Str = stdin.readLineSync()!;
    if (v1Str.toLowerCase() == 'x') {
      break;
    }
    double v1 = double.parse(v1Str);
    print('Digite o segundo número:');
    String v2Str = stdin.readLineSync()!;
    double v2 = double.parse(v2Str);

    print('Digite a operação: +, -, /, *:');
    String opStr = stdin.readLineSync()!;

    switch (opStr) {
      case '+':
        {
          resultado = v1 + v2;
          break;
        }
      case '-':
        {
          resultado = v1 - v2;
          break;
        }
      case '*':
        {
          resultado = v1 * v2;
          break;
        }
      case '/':
        {
          if (v2 != 0) {
            resultado = v1 / v2;
          } else {
            mensagem = "[ERRO] Divisão por zero";
            resultado = 99999999;
          }
          break;
        }
    }

    print('''  
      =======================================================      
      $mensagem
      $v1 $opStr $v2  =  $resultado
      =======================================================
      ''');
  }
}
