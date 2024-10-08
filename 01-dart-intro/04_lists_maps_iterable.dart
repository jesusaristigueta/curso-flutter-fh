void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('Lista original: $numbers');
  print('Length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: ${reversedNumbers}');
  print('List: ${reversedNumbers.toList()}');
  print('List: ${reversedNumbers.toSet()}');

  // final numbersGreaterThan5 = numbers.where((num) => num > 5);
  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5; // true if num > 5, false otherwise
  });
  print('> 5: $numbersGreaterThan5');
  print('> 5: ${numbersGreaterThan5.toSet()}');
}
