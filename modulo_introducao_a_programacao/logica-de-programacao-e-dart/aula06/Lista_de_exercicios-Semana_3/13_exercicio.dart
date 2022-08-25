/*
CURSO:  DESENVOLVEDOR MOBILE C/FLUTTER 2022 BY PROZ EDUCAÇÃO
TURMA:  01
ALUNO:  Edilson José de Carvalho Vilarinho Messias
E-MAIL: ed.vilarinho@gmail.com
AULA:   06
DATA:   18/08/2022

Lista de exercícios – Semana 3
Exercícios sobre condicionais e laços de repetição

13. Desenvolver um algoritmo que efetue a soma de todos os números ímpares que
são múltiplos de três e que se encontram no conjunto dos números de 1 até 500.
*/

import 'dart:io';

void main(List<String> arguments) {
  int soma = 0;
  for (int i = 1; i <= 500; i++) {
    if (i % 2 != 0 && i % 3 == 0) {
      soma = soma + i;
    }
  }
  print('''  
      =======================================================      
      A soma é $soma      
      =======================================================
  ''');
}

//  A soma é 20667    