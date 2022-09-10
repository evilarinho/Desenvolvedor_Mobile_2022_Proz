/*
CURSO:  DESENVOLVEDOR MOBILE C/FLUTTER 2022 BY PROZ EDUCAÇÃO
TURMA:  01
ALUNO:  Edilson José de Carvalho Vilarinho Messias
E-MAIL: ed.vilarinho@gmail.com
AULA:   10
DATA:   01/09/2022

*** CODE PARK 3/4 ***
Crie uma classe e insira nela, no mínimo, dois atributos, os quais devem ter um
método acessor (get) e um método modificador (set) para cada.

Defina um objeto para cada atributo e elabore um construtor para criar alguma
regra.

Após realizar a atividade, use o Gist para salvar seu código Dart e compartilhe
o link no campo ao lado para que outros desenvolvedores possam analisá-lo.
*/

void main(List<String> args) {
  Eleitor2022 eleitor1 =
      new Eleitor2022(1234, nomeEleitor: "João", idadeEleitor: 45);

  print(eleitor1.titulo);
  print(eleitor1.nome);

  eleitor1.Eleicoes2022();

  eleitor1.titulo = 0;
}

class Eleitor2022 {
  int _numTitulo;
  String nomeEleitor;
  int idadeEleitor;
  Eleitor2022(
    this._numTitulo, {
    required this.nomeEleitor,
    required this.idadeEleitor,
  });

  int get titulo => _numTitulo;

  set titulo(int numero) {
    if (numero > 0) {
      _numTitulo = numero;
    } else {
      throw ("Informe um número do título maior que zero");
    }
  }

  set idade(int numero) {
    if (numero >= 16) {
      idadeEleitor = numero;
    } else {
      print("eleitor com idade < 16 não vota");
    }
  }

  String get nome => nomeEleitor;
  int get idade => idadeEleitor;

  void Eleicoes2022() {
    if (idade >= 18 && idade < 70) {
      print(
          "Eleitor $nome com $idade anos é obrigado a votar nas eleições 2022");
    } else {
      print(
          "Eleitor $nome com $idade anos tem voto facultativo nas eleições 2022");
    }
  }
}
/*
dart run codepark3.dart
1234
João
Eleitor João com 45 anos é obrigado a votar nas eleições 2022
Unhandled exception:
Informe um número do título maior que zero
#0      Eleitor2022.titulo= (file:///media/edilson/Dados1/_Edilson/Projetos/Estudo_Flutter/Desenvolvedor_Mobile_2022_Proz/modulo_introducao_a_programacao/logica-de-programacao-e-dart/aula10/codepark3.dart:48:7)
#1      main (file:///media/edilson/Dados1/_Edilson/Projetos/Estudo_Flutter/Desenvolvedor_Mobile_2022_Proz/modulo_introducao_a_programacao/logica-de-programacao-e-dart/aula10/codepark3.dart:29:12)
#2      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:295:32)
#3      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:192:12)
*/
