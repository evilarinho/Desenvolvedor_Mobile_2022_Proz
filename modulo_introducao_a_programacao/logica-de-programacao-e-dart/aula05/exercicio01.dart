import 'dart:io';

void main(List<String> args) {
  print('Digite a coordenada X:');
  String xStr = stdin.readLineSync()!;
  int x = int.parse(xStr);
  print('Digite a coordenada Y:');
  String yStr = stdin.readLineSync()!;
  int y = int.parse(yStr);
  String mensagem = "";

  if (x == 0 || y == 0) {
    mensagem = "são coordenadas fora dos quadrantes";
  } else if (x > 0 && y > 0) {
    mensagem = "pertence ao 1° quadrante";
  } else if (x < 0 && y > 0) {
    mensagem = "pertence ao 2° quadrante";
  } else if (x > 0 && y < 0) {
    mensagem = "pertence ao 4° quadrante";
  } else {
    mensagem = "pertence ao 3° quadrante";
  }

  print('''  
      =======================================================
      O ponto ($x,$y) $mensagem
      Considerando as especificações de um plano cartesiano
      =======================================================
  ''');
}
