/*
CURSO:  DESENVOLVEDOR MOBILE C/FLUTTER 2022 BY PROZ EDUCAÇÃO
TURMA:  01
ALUNO:  Edilson José de Carvalho Vilarinho Messias
E-MAIL: ed.vilarinho@gmail.com
AULA:   06
DATA:   18/08/2022

Lista de exercícios – Semana 3
Exercícios sobre condicionais e laços de repetição

8. Uma loja tem tem uma política de descontos de acordo com o valor da compra do
cliente. Os descontos começam acima dos R$500. A cada 100 reais acima dos R$500,00
o cliente ganha 1% de desconto cumulativo até 25%.
    a. Por exemplo: R$500 = 0% || R$600,00 = 1% ... etc...
    b. Faça um programa que exiba essa tabela de descontos no seguinte
formato: Valordacompra – porcentagem de desconto – valor final
*/

import 'dart:io';

void main(List<String> arguments) {
  while (true) {
    print('Digite o valor da compra ou X p/sair:');
    String compraStr = stdin.readLineSync()!;
    if (compraStr.toLowerCase() == 'x') {
      break;
    }

    double compra = double.parse(compraStr);
    double desconto = 0.0;
    double valorFinal = 0.0;

    if (compra > 0) {
      if (compra > 500) {
        desconto = ((compra - 500) / 100).truncate().toDouble();
        if (desconto > 25) {
          desconto = 25;
        }
        valorFinal = compra - compra * desconto / 100;
      } else
        valorFinal = compra;

      print('''  
      =======================================================      
      Valor da compra: $compra
      Porcentagem de desconto: $desconto%
      Valor final: $valorFinal      
      =======================================================
      ''');
    } else {
      print('Por favor, informe um valor de compra maior que zero');
    }
  }
}
