/* 
   Este codigo ejemplifica las diferencias entre const y final
   final se puede inicializar con una funcion que no ha sido ejecutada
   const requiere obligatoriamente un valor existente para su inicializacion
 */

void main(List<String> args) {
  final numero = sumar();
  //const numero2 = sumar();

  print(numero);
}

int sumar() {
  return 5 + 3;
}
