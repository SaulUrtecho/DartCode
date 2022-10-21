import 'dart:io';

void main(List<String> args) {
  stdout.writeln('Cual es tu nombre?'); // imprimir en cmd o terminal
  String? nombre = stdin.readLineSync(); // obtengo por teclado un dato en tipo string
  stdout.writeln('Tu nombre es: $nombre');
}
