void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Iron Man',
    'isAlive': true,
  };

  final ironMan = Hero(
    isAlive: false,
    power: 'Money',
    name: 'Tony Stark',
  );

  final ironManJson = Hero.fromJson(rawJson);

  print(ironMan);
  print(ironManJson);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    this.isAlive = true,
  });

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power']?? 'No power found',
      isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES' : 'Nope'}';
  }
}
