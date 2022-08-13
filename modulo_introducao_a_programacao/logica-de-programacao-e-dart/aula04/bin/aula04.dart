import 'dart:io';

void main(List<String> arguments) {
  print('Qual o seu nome?');
  String? nome = stdin.readLineSync()!;
  print('Qual a sua idade:');
  String? idade = stdin.readLineSync()!;
  print('Seu nome é $nome, você tem $idade anos!\n');
}
