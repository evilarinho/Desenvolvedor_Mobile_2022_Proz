/*
CURSO:  DESENVOLVEDOR MOBILE C/FLUTTER 2022 BY PROZ EDUCAÇÃO
TURMA:  01
ALUNO:  Edilson José de Carvalho Vilarinho Messias
E-MAIL: ed.vilarinho@gmail.com
AULA:   06
DATA:   18/08/2022

Lista de exercícios – Semana 3
Exercícios sobre condicionais e laços de repetição

14. Escreva um algoritmo que leia um valor inicial A e imprima a seqüência de
valores do cálculo de A! (lê-se : A fatorial)e o seu resultado.
Ex: 5! = 5 X 4 X 3 X 2 X 1 = 120
*/

import 'dart:io';

void main(List<String> arguments) {
  while (true) {
    print('Digite o número ou X p/sair:');
    String numStr = stdin.readLineSync()!;
    if (numStr.toLowerCase() == 'x') {
      break;
    }

    int num = int.parse(numStr);
    int fatorial = 1;

    for (int i = 1; i <= num; i++) {
      fatorial = fatorial * i;
    }
    print('''  
        =======================================================      
        O Fatoral de $num é $fatorial        
        =======================================================
    ''');
  }
}
