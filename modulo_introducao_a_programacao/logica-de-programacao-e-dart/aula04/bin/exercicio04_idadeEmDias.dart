import 'dart:io';

void main(List<String> args) {
  // idade em dias convertida em anos,meses e dias
  // 1 ano = 365 dias
  // 1 mês = 30 dias
  // devido a convenção fixa de 365 dias para 1 ano e 30 dias para todos os meses
  // a precisão dos dias foi muito prejudicada

  print('Digite o seu primeiro nome ?');
  String nome = stdin.readLineSync()!;
  print('Digite a sua idade em dias ?');
  String idadeDias = stdin.readLineSync()!;

  int idadeEmDias = int.parse(idadeDias);
  int anos = int.parse((idadeEmDias / 365).toStringAsFixed(0));
  int meses = int.parse(((idadeEmDias % 365) / 30).toStringAsFixed(0));
  int dias = int.parse(((idadeEmDias % 365) % 30).toStringAsFixed(0));
  print('============');
  print('''  Olá $nome, tudo bem ?

  De acordo com os dados fornecidos, você tem ${anos} anos, ${meses} meses e ${dias} dias vividos, parabêns por essa jornada !
     
  Seja muito bem-vindo ao nosso curso''');
}
