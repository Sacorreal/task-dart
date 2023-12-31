import 'dart:io';

import '../utils/convertir.dart';

void verTarea(String nombre) {
  try {
    final archivo = File('./tareas.txt');
    if (archivo.existsSync()) {
      final contenido = archivo.readAsLinesSync();
      contenido.forEach((tareaLocal) {
        if (tareaLocal.contains(nombre)) {
          final tarea = convertirTarea(tareaLocal);
          print('Este es el objeto de la tarea');
          print('nombre: ${tarea.nombre}');
        }
      });
    } else {
      print('El archivo no existe');
    }
  } catch (e) {
    print('Ocurrio un error ${e.toString()}');
  }
}
