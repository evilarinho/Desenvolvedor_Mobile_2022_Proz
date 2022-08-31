void main(List<String> args) {
  print("**************************** CLASSE MATERIAL 1: Caneta");
  Caneta caneta1 = new Caneta();
  caneta1.modelo = "Bic Cristal";
  caneta1.cor = "azul";
  caneta1.ponta = 0.9;
  caneta1.tampada = true;

  caneta1.status();
  caneta1.rabiscar();
  caneta1.destampar();
  caneta1.status();
  caneta1.rabiscar();
  caneta1.tampar();
  caneta1.status();

  print("**************************** CLASSE MATERIAL 2: Cadeira");
  Cadeira cadeira1 = new Cadeira();
  cadeira1.modelo = "GiroFlex 1010";
  cadeira1.cor = "preta";
  cadeira1.disponivel = true;
  cadeira1.status();
  cadeira1.regularAltura();
  cadeira1.ocuparCadeira();
  cadeira1.status();

  print("**************************** CLASSE ABSTRATA 1: ContaBanco");
  ContaBanco conta1 = new ContaBanco();
  conta1.numConta = 1111;
  conta1.titular = "João";
  conta1.abrirConta("CC");
  conta1.depositar(100.00);
  conta1.sacar(50.00);

  print("**************************** CLASSE ABSTRATA 2: Retângulo");
  Retangulo retangulo1 = new Retangulo();
  retangulo1.cor = "vermelho";
  retangulo1.altura = 2.0;
  retangulo1.base = 5.0;
  retangulo1.status();
  retangulo1.calcularArea();
  retangulo1.calcularPerimentro();
}

class Caneta {
  // String modelo = "Bic";
  late String modelo;
  late String cor;
  late double ponta;
  late bool tampada;

  void status() {
    print("Modelo: $modelo");
    print("Uma caneta $cor");
    print("Ponta: $ponta");
    print("Está tampada ? $tampada");
  }

  void rabiscar() {
    if (tampada == true) {
      print("ERRO! Não posso rabiscar");
    } else {
      print('Estou rabiscando');
    }
  }

  void tampar() {
    tampada = true;
  }

  void destampar() {
    tampada = false;
  }
}

class ContaBanco {
  late int numConta;
  late String tipo;
  late String titular;
  late double saldo;
  late bool status;

  void estadoAtual() {
    print("----------------------");
    print("Conta: $numConta");
    print("Tipo: $tipo");
    print("Titular: $titular");
    print("Saldo: $saldo");
    print("Status: $status");
  }

  void abrirConta(String t) {
    tipo = t;
    status = true;
    String msg = "Conta de $titular aberta com sucesso";
    if (t == "CC") {
      // conta corrente
      saldo = 50.00;
    } else if (t == "CP") {
      // conta poupança
      saldo = 150.00;
    } else {
      msg = "Tipo de conta: $t inválido";
    }
    print(msg);
  }

  void fecharConta() {
    if (saldo > 0) {
      print("Conta não pode ser fechada porque ainda tem saldo");
    } else {
      status = false;
      print("Conta fechada com sucesso");
    }
  }

  void depositar(double v) {
    if (status) {
      saldo = saldo + v;
      print("Depósito de RS $v realizado com sucesso na conta de $titular");
    } else {
      print("Impossível depositar em uma conta fechada");
    }
  }

  void sacar(double v) {
    if (status) {
      if (saldo >= v) {
        saldo = saldo - v;
        print("Saque de RS $v realizado com sucesso na conta de $titular");
      } else {
        print(
            "Sado de RS $saldo insuficiente para saque de $v na conta de $titular ");
      }
    }
  }
}

class Cadeira {
  late String modelo;
  late String cor;
  late bool disponivel;

  void status() {
    print("Modelo: $modelo");
    print("Cor: $cor");
    print("Disponível: $disponivel");
  }

  void regularAltura() {
    if (disponivel) {
      print("Altura da cadeira modelo $modelo regulada com sucesso");
    } else {
      print("Cadeira não disponível para regular altura");
    }
  }

  void ocuparCadeira() {
    if (disponivel) {
      disponivel = false;
      print("Cadeira modelo $modelo ocupada");
    } else {
      print("Cadeira indisponível");
    }
  }
}

class Retangulo {
  late String cor;
  late double base;
  late double altura;

  void status() {
    print("Cor: $cor");
    print("Base: $base");
    print("Altura: $altura");
  }

  void calcularPerimentro() {
    double perimetro = 0.0;
    if (altura > 0 && base > 0) {
      perimetro = 2 * (base + altura);
      print("Perímetro: $perimetro");
    } else {
      print("Favor informar base e altura maiores que zero");
    }
  }

  void calcularArea() {
    double area = 0.00;
    if (altura > 0 && base > 0) {
      area = base * altura;
      print("Área: $area");
    } else {
      print("Favor informar base e altura maiores que zero");
    }
  }
}


/*
**************************** CLASSE MATERIAL 1: Caneta
Modelo: Bic Cristal
Uma caneta azul
Ponta: 0.9
Está tampada ? true
ERRO! Não posso rabiscar
Modelo: Bic Cristal
Uma caneta azul
Ponta: 0.9
Está tampada ? false
Estou rabiscando
Modelo: Bic Cristal
Uma caneta azul
Ponta: 0.9
Está tampada ? true
**************************** CLASSE MATERIAL 2: Cadeira
Modelo: GiroFlex 1010
Cor: preta
Disponível: true
Altura da cadeira modelo GiroFlex 1010 regulada com sucesso
Cadeira modelo GiroFlex 1010 ocupada
Modelo: GiroFlex 1010
Cor: preta
Disponível: false
**************************** CLASSE ABSTRATA 1: ContaBanco
Conta de João aberta com sucesso
Depósito de RS 100.0 realizado com sucesso na conta de João
Saque de RS 50.0 realizado com sucesso na conta de João
**************************** CLASSE ABSTRATA 2: Retângulo
Cor: vermelho
Base: 5.0
Altura: 2.0
Área: 10.0
Perímetro: 14.0
*/
