void main() {
  final Hero wolverine = new Hero(name: 'Logan', power:  'Regeneracion');
  print(wolverine);   //igual a wolverine.toString()
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  Hero({
    required this.name,
    required this.power
  }); // Constructor with initializer list
  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;

  @override
  String toString() {
    return 'Hero: $name, Power: $power';
  }
}
