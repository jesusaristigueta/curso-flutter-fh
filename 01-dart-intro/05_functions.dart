void main() {
  print(greateEveryone());

  print('Suma: ${addTwoNumbersOptional(10)}');

  print(greetPerson(name: 'Jesus', message: 'Hey!'));
}

// String greateEveryone() {
//   return 'Hello everyone!';
// }

// Funcion de flecha, debe retornar inmediatamente el resultado
String greateEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbersLambda(int a, int b) => a + b;

// Parametros en corchetes son opcionales
//int addTwoNumbersOptional(int a, [int? b]) {
int addTwoNumbersOptional(int a, [int b = 0]) {
  // Se establece un valor por defecto en caso de que b sea null
  //b = b ?? 0; // Devuelve 0 si b es null
  //b ??= 0; // Forma corta de establecer 0 si es null
  return a + b;
}

String greetPerson({required String name, String message = 'Hola,'}) {
  return '$message $name!';
}
