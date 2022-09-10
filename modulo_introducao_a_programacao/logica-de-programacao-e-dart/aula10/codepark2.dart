/*
CURSO:  DESENVOLVEDOR MOBILE C/FLUTTER 2022 BY PROZ EDUCAÇÃO
TURMA:  01
ALUNO:  Edilson José de Carvalho Vilarinho Messias
E-MAIL: ed.vilarinho@gmail.com
AULA:   10
DATA:   01/09/2022

*** CODE PARK 2/4 ***
Crie uma classe de sua preferência com, no mínimo, um atributo, um método com
retorno e um método sem retorno. Depois, instancie três ou mais objetos para
testar esta classe.
Após realizar a atividade, use o Gist para salvar seu código Dart e compartilhe
o link no campo ao lado para que outros desenvolvedores possam analisá-lo.
*/

void main(List<String> args) {
  var lampadaSala = new Lampada(
      modelo: "Led",
      temperaturaDeCor: "Branca",
      durabilidade: 8000,
      potencia: 4.5,
      ligadaOn: false);

  var lampadaVaranda = new Lampada(
      modelo: "Led",
      temperaturaDeCor: "Amarela",
      durabilidade: 15000,
      potencia: 15,
      ligadaOn: false);

  var lampadaQuarto = new Lampada(
      modelo: "Led",
      temperaturaDeCor: "Branca",
      durabilidade: 8000,
      potencia: 9,
      ligadaOn: false);

  print("********* lampadaSala *********");
  lampadaSala.status();
  lampadaSala.AcionarInterruptor();
  lampadaSala.status();
  lampadaSala.AcionarInterruptor();
  lampadaSala.status();
  lampadaSala.LampadaLigada();
  lampadaSala.status();

  print("********* lampadaVaranda *********");
  lampadaVaranda.status();
  lampadaVaranda.AcionarInterruptor();
  lampadaVaranda.status();

  print("********* lampadaQuarto *********");
  lampadaQuarto.status();
  lampadaQuarto.AcionarInterruptor();
  lampadaQuarto.status();
}

class Lampada {
  late String modelo; // Led ou Fluorencente compacta
  late String temperaturaDeCor; // Indica a aparência da cor da luz.
  late int durabilidade; // Unidade de medida: horas (h)
  late double potencia; // em Watts
  late bool ligadaOn;
  Lampada({
    required this.modelo,
    required this.temperaturaDeCor,
    required this.durabilidade,
    required this.potencia,
    required this.ligadaOn,
  });

  void status() {
    print("======================");
    //
    print("Modelo: $modelo");
    print("Cor da luz: $temperaturaDeCor");
    print("Durabilidade: $durabilidade h");
    print("Potênciada: $potencia Watts");
    print("Ligada: $ligadaOn");
  }

  void AcionarInterruptor() {
    print("======================");
    if (ligadaOn) {
      ligadaOn = false;
      print("Lampada desligada");
    } else {
      ligadaOn = true;
      print("Lampada ligada");
    }
  }

  bool LampadaLigada() {
    print("======================");
    if (ligadaOn) {
      print("A Lâmpada está ligada");
    } else {
      print("A Lâmpada está desligada");
    }
    return ligadaOn;
  }
}

/*
********* lampadaSala *********
======================
Modelo: Led
Cor da luz: Branca
Durabilidade: 8000 h
Potênciada: 4.5 Watts
Ligada: false
======================
Lampada ligada
======================
Modelo: Led
Cor da luz: Branca
Durabilidade: 8000 h
Potênciada: 4.5 Watts
Ligada: true
======================
Lampada desligada
======================
Modelo: Led
Cor da luz: Branca
Durabilidade: 8000 h
Potênciada: 4.5 Watts
Ligada: false
======================
A Lâmpada está desligada
======================
Modelo: Led
Cor da luz: Branca
Durabilidade: 8000 h
Potênciada: 4.5 Watts
Ligada: false
********* lampadaVaranda *********
======================
Modelo: Led
Cor da luz: Amarela
Durabilidade: 15000 h
Potênciada: 15.0 Watts
Ligada: false
======================
Lampada ligada
======================
Modelo: Led
Cor da luz: Amarela
Durabilidade: 15000 h
Potênciada: 15.0 Watts
Ligada: true
********* lampadaQuarto *********
======================
Modelo: Led
Cor da luz: Branca
Durabilidade: 8000 h
Potênciada: 9.0 Watts
Ligada: false
======================
Lampada ligada
======================
Modelo: Led
Cor da luz: Branca
Durabilidade: 8000 h
Potênciada: 9.0 Watts
Ligada: true
*/
