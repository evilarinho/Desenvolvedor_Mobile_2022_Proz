import 'dart:io';

void main(List<String> args) {
  print('Informe o valor total da compra:');
  String totalStr = stdin.readLineSync()!;
  double total = double.parse(totalStr);
  print(
      'Você é um cliente comum (1), um cliente Vip (2) ou um funcionário (3):');
  String tipoClienteStr = stdin.readLineSync()!;
  double valorpago = 0.00;

  if (tipoClienteStr == '1' || tipoClienteStr == '2' || tipoClienteStr == '3') {
    switch (tipoClienteStr) {
      case "1":
        {
          valorpago = total;
          break;
        }
      case "2":
        {
          valorpago = total - total * 5 / 100;
          break;
        }
      default:
        {
          valorpago = total - total * 10 / 100;
        }
    }
    print('''  
      =======================================================      
      Você irá pagar $valorpago      
      =======================================================
      ''');
  } else {
    print("Tipo de cliente inválido: $tipoClienteStr");
  }
}
