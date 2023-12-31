import '../models/tarea.dart';

Tarea convertirTarea(String cadena) {
  final atributos = cadena.split('|');
  return Tarea(atributos[0],
      descripcion: atributos[1], estado: atributos[2] as EstadoTarea);
}
