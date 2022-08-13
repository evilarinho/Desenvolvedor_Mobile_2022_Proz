/*
    CURSO:  DESENVOLVEDOR MOBILE C/FLUTTER 2022 BY PROZ EDUCAÇÃO
    TURMA:  01
    ALUNO:  Edilson José de Carvalho Vilarinho Messias
    E-MAIL: ed.vilarinho@gmail.com
    AULA:   04
    DATA:   12/08/2022
  */
/*
    Conversão Tempo
    1.Dado um tempo em minutos, converter para dias, horas e minutos,
      mostrando o resultado na tela. Um dia tem 1440 minutos, ao passo
      que 1 hora tem 60 minutos.    
  */

import 'dart:io';

void main(List<String> args) {
  print('Digite um tempo em minutos:');
  String tempoMinutosStr = stdin.readLineSync()!;
  int tempoMinutos = int.parse(tempoMinutosStr);
  int dias = (tempoMinutos / 1440).floor();
  int horas = ((tempoMinutos % 1440) / 60).floor();
  int minutos = ((tempoMinutos % 1440) % 60).floor();
  print('''
  =================================================
  $tempoMinutos minutos tem $dias dias, $horas horas e $minutos minutos 
  =================================================      
  ''');
}

/*
****** Execuçao dos casos de teste ******
1.
Digite um tempo em minutos:
2234
  =================================================
  2234 minutos tem 1 dias, 13 horas e 14 minutos 
  =================================================  
2.
Digite um tempo em minutos:
1065
  =================================================
  1065 minutos tem 0 dias, 17 horas e 45 minutos 
  =================================================     
3.
Digite um tempo em minutos:
45
  =================================================
  45 minutos tem 0 dias, 0 horas e 45 minutos 
  =================================================  
4.
Digite um tempo em minutos:
5555
  =================================================
  5555 minutos tem 3 dias, 20 horas e 35 minutos 
  ================================================= 
*/
