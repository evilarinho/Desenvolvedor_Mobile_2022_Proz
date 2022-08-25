/*
  CURSO:  DESENVOLVEDOR MOBILE C/FLUTTER 2022 BY PROZ EDUCAÇÃO
  TURMA:  01
  ALUNO:  Edilson José de Carvalho Vilarinho Messias
  E-MAIL: ed.vilarinho@gmail.com
  AULA:   06
  DATA:   18/08/2022

  Lista de exercícios – Semana 3
  Exercícios sobre condicionais e laços de repetição 

  3. Escreva um programa que leia as medidas dos lados de um triângulo e escreva
  se ele é Equilátero, Isósceles ou Escaleno.
  Sendo que:
  − Triângulo Equilátero: possui os 3 lados iguais.
  − Triângulo Isóscele: possui 2 lados iguais.
  − Triângulo Escaleno: possui 3 lados diferentes.

*/
import 'dart:io';

void main(List<String> args) {
  while (true) {
    print('*** Informe apenas números maiores que zero');
    print('Digite o primeiro lado do triângulo ou X p/sair:');
    String lado1Str = stdin.readLineSync()!;
    if (lado1Str.toLowerCase() == 'x') {
      break;
    }
    print('Digite o segundo lado do triângulo:');
    String lado2Str = stdin.readLineSync()!;

    print('Digite o terceiro lado do triângulo:');
    String lado3Str = stdin.readLineSync()!;

    double lado1 = double.parse(lado1Str);
    double lado2 = double.parse(lado2Str);
    double lado3 = double.parse(lado3Str);
    String mensagem = '';

    if (lado1 > 0 && lado2 > 0 && lado3 > 0) {
      /*
          Verificar se os 3 números formam um triângulo segundo o TEOREMA
          DA DESIGUALDADE TRIANGULAR - Num triângulo, o comprimento de um
          dos lados é sempre inferior à soma dos comprimentos dos outros 
          dois lados.
        */

      if ((lado1 + lado2 > lado3) &&
          (lado2 + lado3 > lado1) &&
          (lado1 + lado3 > lado2)) {
        // classificar o triângulo
        if (lado1 == lado2 && lado2 == lado3) {
          mensagem = 'Triângulo Equilátero';
        } else if (lado1 != lado2 && lado1 != lado3 && lado2 != lado3) {
          mensagem = 'Triângulo Escaleno';
        } else {
          mensagem = 'Triângulo Isóscele';
        }

        print('''  
            =======================================================      
            Os lados $lado1, $lado2 e $lado3 formam um $mensagem            
            =======================================================
            ''');
      } else {
        print(
            "Os números $lado1, $lado2 e $lado3 não formam um triângulo, segundo o Teorema da Desigualdade Triangular");
      }
    }
  }
}

/*
MASSA DE TESTE
 3.0, 4.0 e 5.0 formam um Triângula Escaleno
 4.0, 3.0 e 5.0 formam um Triângula Escaleno
 5.0, 4.0 e 3.0 formam um Triângula Escaleno
 5.0, 5.0 e 5.0 formam um Triângula Equilátero
 4.0, 4.0 e 3.0 formam um Triângula Isóscele
 3.0, 4.0 e 4.0 formam um Triângula Isóscele
 3.61, 3.61 e 4.0 formam um Triângula Isóscele 

*/