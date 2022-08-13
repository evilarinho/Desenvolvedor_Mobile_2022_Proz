/*
    CURSO:  DESENVOLVEDOR MOBILE C/FLUTTER 2022 BY PROZ EDUCAÇÃO
    TURMA:  01
    ALUNO:  Edilson José de Carvalho Vilarinho Messias
    E-MAIL: ed.vilarinho@gmail.com
    AULA:   04
    DATA:   12/08/2022
  */
/*
    Conversão de temperatura
    1. Converter em Celsius para Fahrenheit. 
    A fórmula simplificada para conversão é: Fahrenheit = Celsius*1.8 + 32
  */

import 'dart:io';

void main(List<String> args) {
  print('Digite a temperatura em graus Celsius:');
  String tempStr = stdin.readLineSync()!;
  double tempC = double.parse(tempStr);
  double tempF = tempC * 1.8 + 32;
  print('''  
      =========================================
      Temperatura em graus Celsius:     $tempC
      Temperatura em graus Fahrenheit:  $tempF  
      =========================================
  ''');
}
