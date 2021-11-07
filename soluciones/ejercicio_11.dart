import 'dart:io'; //importando desde otro archivo
void main() {
  print('Ingresa primer número');
  String? numero1 = stdin.readLineSync();
  print('Ingresa segundo número');
  String? numero2 = stdin.readLineSync();
  print('El mínimo común múltiplo de ambos números es ${mcm(int.tryParse(numero1!), int.tryParse(numero2!))}');
}

int? mcd(int? a, int? b) {
  if(a == null || b == null)
    return null;
  int? temporal;
  while (b != 0) {
    temporal = b;
    b = a! % b!;
    a = temporal;
  }
  return a;
}

int? mcm(int? a, int? b) {
  if(a == null || b == null)
    return null;
  return  (a * b) ~/ mcd(a, b)!;
}