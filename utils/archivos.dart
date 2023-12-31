import 'dart:io';

void archivos() {
  try {
    final archivo = File('tareas.txt');
    if (archivo.existsSync()) {
      final contenido = archivo.readAsStringSync();
      print('el contenido es: ${contenido}');

      final nuevoContenido = 'Hola mundo';
      archivo.writeAsStringSync(contenido + '\n' + nuevoContenido);
    } else {
      print('El archivo no existe');
    }
  } catch (e) {
    print('Ocurrio un error ${e.toString()}');
  }
}
