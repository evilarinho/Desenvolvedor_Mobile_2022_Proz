/*
CURSO:  DESENVOLVEDOR MOBILE C/FLUTTER 2022 BY PROZ EDUCAÇÃO
TURMA:  01
ALUNO:  Edilson José de Carvalho Vilarinho Messias
E-MAIL: ed.vilarinho@gmail.com
AULA:   06
DATA:   18/08/2022

Lista de exercícios – Semana 3
Exercícios sobre condicionais e laços de repetição

15. Leia 15 números e mostre o maior e o menor dos números inseridos.
*/

import 'dart:io';

void main(List<String> arguments) {
  while (true) {
    print('Digite a quantidade de números ou X p/sair:');
    String qtdStr = stdin.readLineSync()!;
    if (qtdStr.toLowerCase() == 'x') {
      break;
    }

    int qtd = int.parse(qtdStr);

    if (qtd > 0) {
      double maior = -99999999999999999.9;
      double menor = 99999999999999999.9;

      for (int i = 1; i <= qtd; i++) {
        print('Digite o No.$i/$qtd:');
        String numStr = stdin.readLineSync()!;

        double num = double.parse(numStr);

        if (num > maior) {
          maior = num;
        }

        if (num < menor) {
          menor = num;
        }
      }
      print('''  
      =======================================================      
      $qtd números lidos
      O menor é $menor
      O maior é $maior      
      =======================================================
      ''');
    } else {
      print('Por favor, informe uma quantidade maior que zero');
    }
  }
}
