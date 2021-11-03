import 'dart:io';
void main() {
  print('Ingrese el número a calcular el factorial:');
  int? numero = int.tryParse(stdin.readLineSync()!);
  int? _factorial = factorial(numero);
  print('El factorial del número ingresado es $_factorial');
}

int? factorial(int? numero) {
  if (numero != null) {
    int resultado = 1;
    while(numero! > 1) {
      resultado *= numero;
      numero--;
    }
    return resultado;
  }
  return null;
}