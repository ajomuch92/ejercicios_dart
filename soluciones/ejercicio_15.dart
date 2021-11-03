import 'dart:io';
import 'ejercicio_9.dart'; //importando desde otro archivo
void main() {
  print('Ingrese el número de la dimensión de la lista');
  int? dimension = int.tryParse(stdin.readLineSync()!);
  if (dimension != null) {
    List<int?> factoriales = List.generate(dimension, (index) => factorial(index));
    print(factoriales);
  } else {
    print('Ingresaste un número inválido');
  }
}