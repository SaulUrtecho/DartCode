void main(List<String> args) {
  // ******************* STRINGS
  String nombre = 'saul';
  String apellido = 'Urtecho';

  print('$nombre $apellido'); // esta forma de imprimir se conoce como template string

  // ******************* NUMEROS

  int empleados = 10; // entero
  double salario = 124.23; // doble
  num numero_incognito = 10; // num indica que la variable puede ser int o double

  print(numero_incognito);
  numero_incognito = 10.4; // cambiamos su valor por un double
  print(numero_incognito.runtimeType);
  print(empleados);
  print(salario);

  // ****************** CONSTANTES
  /* 1. primero se compila el codigo (se convierte a codigo intermedio)
    2. despues se ejecuta (luego el dispositivo recoje ese codigo intermedio y lo ejecuta) */

  final double pi = 3.1416; // final asigna el valor en tiempo de ejecucion
  const double pi2 = 3.141612; // const asigna el valor en tiempo de compilacion

  print(pi);
  print(pi2);

  // ***************** BOOLEANOS
  bool? isActive = null; // se pone signo de interrogacion para indicar que puede recibir un valor nulo

  if (isActive == null) {
    print('Esta activo es nulo');
  } else {
    print('No es nulo');
  }

  // *************** LISTAS

  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; // de preferencia hay que poner el tipo de lista

  numeros.add(11); // se agrega un dato al final de la lista

  print(numeros[0]); // se usa la posicion para acceder al valor

  // ************* MAPAS

  //Map persona = {
  // 'nombre': 'Saul',
  //  'edad': 28,
  //  'soltero': true
  //};

  Map<String, dynamic> persona = {'nombre': 'Saul', 'edad': 28, 'soltero': true};

  print(persona['nombre']); // se accede al valor por medio de la llave

  persona.addAll({'ocupacion': 'estudiante'});
  print(persona);
}
