/*
CURSO:  DESENVOLVEDOR MOBILE C/FLUTTER 2022 BY PROZ EDUCAÇÃO
TURMA:  01
ALUNO:  Edilson José de Carvalho Vilarinho Messias
E-MAIL: ed.vilarinho@gmail.com
AULA:   06
DATA:   18/08/2022

Lista de exercícios – Semana 3
Exercícios sobre condicionais e laços de repetição

10. Faça um programa que receba a idade de 15 pessoas e que calcule e mostre:
    a. A quantidade de pessoas em cada faixa etária
    b. A porcentagem de pessoas na primeira e na última faixa etária com relação ao
    total de pessoas
    • Até 15 anos
    • De 16 a 30 anos
    • De 31 a 45 anos
    • De 46 a 60 anos
    • Acima de 60 anos
*/

import 'dart:io';

void main(List<String> arguments) {
  while (true) {
    print('Digite a quantidade de pessoas ou X p/sair:');
    String qtdStr = stdin.readLineSync()!;
    if (qtdStr.toLowerCase() == 'x') {
      break;
    }

    int qtd = int.parse(qtdStr);

    if (qtd > 0) {
      int totalFaixa1 = 0;
      int totalFaixa2 = 0;
      int totalFaixa3 = 0;
      int totalFaixa4 = 0;
      int totalFaixa5 = 0;
      double porcentagem1 = 0.00;
      double porcentagem5 = 0.00;

      for (int i = 1; i <= qtd; i++) {
        print('Digite a idade da pessoa No.$i/$qtd:');
        String idadeStr = stdin.readLineSync()!;

        int idade = int.parse(idadeStr);

        if (idade <= 0) {
          print('Por favor, informe uma idade maior que zero');
          i = i - 1;
        } else if (idade <= 15) {
          totalFaixa1 = totalFaixa1 + 1;
        } else if (idade <= 30) {
          totalFaixa2 = totalFaixa2 + 1;
        } else if (idade <= 45) {
          totalFaixa3 = totalFaixa3 + 1;
        } else if (idade <= 60) {
          totalFaixa4 = totalFaixa4 + 1;
        } else {
          totalFaixa5 = totalFaixa5 + 1;
        }
      }
      porcentagem1 = (totalFaixa1 / qtd) * 100;
      String porcentagem1Str = porcentagem1.toStringAsFixed(2);

      porcentagem5 = (totalFaixa5 / qtd) * 100;
      String porcentagem5Str = porcentagem5.toStringAsFixed(2);

      print('''  
      =======================================================      
      QUANTIDADE DE PESSOAS POR FAIXA ETÁRIA
      Quantidade de pessoas: $qtd
      Até 15 anos       : $totalFaixa1 
      De 16 a 30 anos   : $totalFaixa2
      De 31 a 45 anos   : $totalFaixa3
      De 46 a 60 anos   : $totalFaixa4
      Acima de 60 anos  : $totalFaixa5    
      Porcentagem de pessoas na primeira faixa: $porcentagem1Str%
      Porcentagem de pessoas na última faixa: $porcentagem5Str%
      =======================================================
      ''');
    } else {
      print('Por favor, informe uma quantidade maior que zero');
    }
  }
}
