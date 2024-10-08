void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  // print(windPlant);
  print('wind: ${chargePhone(windPlant)}');
  print('nuckear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Plant is low on energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType {
  nuclear,
  wind,
  water,
}

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount); /*{
    throw UnimplementedError();
  }*/
}

// extends: uso de la herencia de la clase padre EnergyPlant
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  void consumeEnergy(double amount) {
    if (amount > energyLeft) {
      throw Exception('Not enough energy to consume');
    }
    energyLeft -= amount;
  }
}

// implements: implementacion de metodos en especifico por ejemplo
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.8); // 80% of the energy is consumed
  }
}
