import 'dart:io';

import 'controllers/agregar_tarea.dart';

void main() {
  print('--------------BIENVENIDO A LA APLICACION----------');

  print('1. Agregar una tarea');
  print('2. Ver una tarea');
  print('3. Eliminar una tarea');
  print('-------------- Seleccione una opcion y presiona enter ----------');

  final entrada = stdin;
  final seleccion = entrada.readLineSync();
  switch (seleccion) {
    case '1':
      print('Seleccionaste la opcion Agregar una tarea');
      agregarTarea();

      break;
    case '2':
      print('Seleccionaste la opcion ver una tarea');
      break;
    case '3':
      print('Seleccionaste la opcion eliminar una tarea');
      break;

    default:
      print('Selecciona una opción valida');
      break;
  }
}
