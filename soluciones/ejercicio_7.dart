import 'dart:io'; //importando desde otro archivo
void main() {
  print('Ingrese tu fecha de nacimiento (DD/MM/AAAA)');
  String? fechaNacimientoString = stdin.readLineSync();
  DateTime? fechaConvertida = convertirFecha(fechaNacimientoString);
  if (fechaConvertida != null) {
    Duration diferencia = DateTime.now().difference(fechaConvertida);
    // Se puede hacer obteniendo la diferencia en días, esta es una manera más precisa
    int meses = diferencia.inDays ~/ 30;
    print('Tiene una edad de $meses meses');
  } else {
    print('No ingresaste una fecha válida');
  }
}

DateTime? convertirFecha(String? fecha) {
  if(fecha != null && fecha.contains('/')) {
    List<String> fechaDividida = fecha.split('/');
    if(fechaDividida.length == 3) {
      DateTime nuevaFecha = DateTime(int.parse(fechaDividida[2]), int.parse(fechaDividida[1]), int.parse(fechaDividida[0]));
      return nuevaFecha;
    }
  }
  return null;
}