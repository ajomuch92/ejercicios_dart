import 'dart:io'; //importando desde otro archivo
void main() {
  print('Ingrese las longitudes de los segmentos de un triángulo');
  List<int?> numeros = [];
  for(int i = 0; i < 3; i++) {
    print('Ingrese el lado ${i + 1}');
    int? longitud = int.tryParse(stdin.readLineSync()!);
    numeros.add(longitud);
  }
  if (esTriangulo(numeros)) {
    print('Los lados ingresados forman un triángulo ${tipoTriangulo(numeros).toLowerCase()}');
  } else {
    print('Los lados ingresados no son un triángulo');
  }
}

bool esTriangulo(List<int?> numeros) {
  if (numeros.every((element) => element != null)) {
    bool desigualdad1 = numeros[0]! + numeros[1]! > numeros[2]!;
    bool desigualdad2 = numeros[2]! + numeros[1]! > numeros[0]!;
    bool desigualdad3 = numeros[0]! + numeros[2]! > numeros[1]!;
    return desigualdad1 && desigualdad2 && desigualdad3;
  }
  return false;
}

String tipoTriangulo(List<int?> numeros) {
  if (numeros[0] == numeros[1] && numeros[1] == numeros[2]) {
    return 'Equilatero';
  } else if (numeros[0] == numeros[1] || numeros[1] == numeros[2] || numeros[0] == numeros[2]) {
    return 'Isósceles';
  }
  return 'Escaleno';
}