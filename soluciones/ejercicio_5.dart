import 'dart:io';
void main() {
  List<String> dias = ['Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sábado'];
  print('Ingrese los días a sumar');
  int? numeroDias = int.tryParse(stdin.readLineSync()!);
  if (numeroDias != null && numeroDias > 0 && numeroDias < 31) {
    int indice = numeroDias % 7;
    print('El día esperado es ${dias[indice]}');
  } else {
    print('Ingresaste un número de días inválido');
  }
}