void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['Transform', 'Limber'],
    'sprites': <int, String>{
      1: 'image1.png',
      2: 'image2.png',
    }
  };

  final pokemons = {
    1: 'ABC',
    2: 'XYZ',
    3: '123',
    150: 'EFE',
  };

  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Sprites: ${pokemon['sprites']}');

  print('Sprite 1: ${pokemon['sprites'][1]}');
  print('Sprite 2: ${pokemon['sprites'][2]}');
}
