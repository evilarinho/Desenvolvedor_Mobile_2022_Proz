/*
CURSO:  DESENVOLVEDOR MOBILE C/FLUTTER 2022 BY PROZ EDUCAÇÃO
TURMA:  01
ALUNO:  Edilson José de Carvalho Vilarinho Messias
E-MAIL: ed.vilarinho@gmail.com
AULA:   10
DATA:   01/09/2022

*** CODE PARK 4/4 ***
Crie três classes, as quais devem conter um método de manipulação de String cada
e que retornem um valor quando forem invocados.

Após realizar a atividade, use o Gist para salvar seu código Dart e compartilhe
o link no campo ao lado para que outros desenvolvedores possam analisá-lo.
*/

void main(List<String> args) {
  Cpf cpf1 = new Cpf(numCpf: "34534534567");
  print(cpf1.contarDigitos());
  cpf1.validarQtdDigitos();
  cpf1.formataCpf();

  Cnpj cnpj1 = new Cnpj(numCnpj: "25295299000180");
  print(cnpj1.contarDigitos());
  cnpj1.validarQtdDigitos();
  cnpj1.formataCnpf();

  PlacaVeiculoMercosul placa1 = new PlacaVeiculoMercosul(numPlaca: "PBA2019");
  print(placa1.contarDigitos());
  placa1.validarQtdDigitos();
  placa1.formataPlaca();
}

class Cpf {
  late String numCpf;
  Cpf({
    required this.numCpf,
  });

  String get cpf => numCpf;

  contarDigitos() {
    int qtdDigitos = numCpf.length;
    return qtdDigitos;
  }

  validarQtdDigitos() {
    int qtdDigitos = numCpf.length;
    if (qtdDigitos == 11) {
      print("CPF $cpf com 11 dígitos");
    } else {
      print("CPF $cpf com quantidades de dígitos diferente de 11");
    }
  }

  formataCpf() {
    String cpfFormatado;

    cpfFormatado = cpf.substring(0, 3) +
        "." +
        cpf.substring(3, 6) +
        "." +
        cpf.substring(6, 9) +
        "-" +
        cpf.substring(9, 11);
    print(cpfFormatado);
  }
}

class Cnpj {
  String numCnpj;
  Cnpj({
    required this.numCnpj,
  });

  String get cnpj => numCnpj;

  contarDigitos() {
    int qtdDigitos = numCnpj.length;
    return qtdDigitos;
  }

  void validarQtdDigitos() {
    int qtdDigitos = numCnpj.length;
    if (qtdDigitos == 14) {
      print("CNPJ $cnpj com 14 dígitos");
    } else {
      print("CNPJ $cnpj com quantidades de dígitos diferente de 14");
    }
  }

  formataCnpf() {
    String cnpjFormatado;

    cnpjFormatado = cnpj.substring(0, 2) +
        "." +
        cnpj.substring(2, 5) +
        "." +
        cnpj.substring(5, 8) +
        "/" +
        cnpj.substring(8, 12) +
        "-" +
        cnpj.substring(12, 14);
    print(cnpjFormatado);
  }
}

class PlacaVeiculoMercosul {
  String numPlaca;
  PlacaVeiculoMercosul({
    required this.numPlaca,
  });

  String get placa => numPlaca;

  contarDigitos() {
    int qtdDigitos = numPlaca.length;
    return qtdDigitos;
  }

  validarQtdDigitos() {
    int qtdDigitos = numPlaca.length;
    if (qtdDigitos == 7) {
      print("Placa Veículo $placa com 7 caracteres");
    } else {
      print(
          "Placa Veículo $placa com quantidades de caracteres diferente de 7");
    }
  }

  formataPlaca() {
    String placaFormatada;

    placaFormatada = placa.substring(0, 3) + "-" + placa.substring(3, 7);
    print(placaFormatada);
  }
}

/*
dart run codepark4.dart
11
CPF 34534534567 com 11 dígitos
345.345.345-67
14
CNPJ 25295299000180 com 14 dígitos
25.295.299/0001-80
7
Placa Veículo PBA2019 com 7 caracteres
PBA-2019
*/