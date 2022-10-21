/*
  crea un programa en dart que:
    si eres mayor o igual a 21 años, mostrar la palabra 'ciudadano'
    si estas entre 18 y 20 (incluyendo 18), mostrar 'mayor de edad'
    si eres menor a 18 (sin contar 18), mostrar 'menor de edad'
*/
import 'dart:io';

void main(List<String> args) {
  stdout.writeln('Cual es tu edad?');
  int edad = int.parse(stdin.readLineSync() ?? '0'); // si es nulo manda 0

  if (edad >= 21) {
    stdout.writeln('ciudadano');
  }
  if (edad >= 18 && edad <= 20) {
    stdout.writeln('mayor de edad');
  }
  if (edad < 18) {
    stdout.writeln('menor de edad');
  }
}
