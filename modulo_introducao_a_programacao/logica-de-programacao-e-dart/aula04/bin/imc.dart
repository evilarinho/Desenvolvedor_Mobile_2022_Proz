/*
    CURSO:  DESENVOLVEDOR MOBILE C/FLUTTER 2022 BY PROZ EDUCAÇÃO
    TURMA:  01
    ALUNO:  Edilson José de Carvalho Vilarinho Messias
    E-MAIL: ed.vilarinho@gmail.com
    AULA:   04
    DATA:   11/08/2022

    IMC
    1. Calcule o IMC da pessoa a partir dos valores recebidos no input.
    Aplique a fórmula: IMC = peso / altura²
*/

import 'dart:io';

void main(List<String> args) {
  print('Digite o seu peso em Kg no formato 99.99:');
  String pesoStr = stdin.readLineSync()!;
  double peso = double.parse(pesoStr);
  print('Digite a sua altura em metros no formato 9.99:');
  String alturaStr = stdin.readLineSync()!;
  double altura = double.parse(alturaStr);
  double imc = (peso / (altura * altura));
  var pesoFormatado = peso.toStringAsFixed(2);
  var alturaFormatada = altura.toStringAsFixed(2);
  var imcFormatado = imc.toStringAsFixed(2);
  print('''  
      =========================================
      Seu peso (Kg)      :$pesoFormatado
      Sua altura (m)     : $alturaFormatada
      Seu IMC            :$imcFormatado  
      =========================================
  ''');
}
