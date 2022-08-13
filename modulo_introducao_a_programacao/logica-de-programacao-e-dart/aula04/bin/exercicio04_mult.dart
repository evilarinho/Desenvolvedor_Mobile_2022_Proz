import 'dart:ffi';

import 'dart:io';

void main(List<String> args) {
  print('Digite a 1a variavel:');
  String? num1 = stdin.readLineSync()!;
  double? num1Double = double.parse(num1);
  print('Digite a 2a variável:');
  String? num2 = stdin.readLineSync()!;
  double? num2Double = double.parse(num2);
  double? resultado = num1Double * num2Double;
  print('O resultado da multiplicação é $resultado\n');
}
