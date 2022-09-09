void main(List<String> args) {

  // ******************* Strings
  String nombre = 'saul';
  String apellido = 'Urtecho';

  final double pi = 3.1416; // final es para que no pueda cambiar su valor una vez inicializada la variable

  print(pi);

  print('$nombre $apellido');  // esta forma de imprimir se conoce como template string

  // ******************* Numeros

  int empleados = 10;
  double salario = 124.23;

  print(empleados);
  print(salario);

 // ***************** Booleanos
  bool? isActive = null;   // se pone signo de interrogacion para indicar que puede recibir un valor nulo

  if (isActive == null){
    print('Esta activo es nulo');
  }else{
    print('No es nulo');
  }

  // *************** Listas

  List<int> numeros = [1,2,3,4,5,6,7,8,9,10]; // de preferencia hay que poner el tipo de lista

  numeros.add(11); // se agrega un dato al final de la lista


  print(numeros[0]); // se usa la posicion para acceder al valor

  // ************* Mapa

  //Map persona = {
   // 'nombre': 'Saul',
  //  'edad': 28,
  //  'soltero': true
  //};

   Map<String, dynamic> persona = {
    'nombre': 'Saul',
    'edad': 28,
    'soltero': true
  };

  print(persona['nombre']); // se accede al valor por medio de la llave

  persona.addAll({'ocupacion': 'estudiante'});
  print(persona);
}