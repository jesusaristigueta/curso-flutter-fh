void main() {
  final mySquare = Square(side: -10);

  //mySquare.side = 5;

  // print('área: ${mySquare.calculateArea()}');
  print('área: ${mySquare.area}');
}

class Square {
  double _side; //Propiedad privada

  Square({required double side})
      : assert(side >= 0, 'side must be positive'), //Asersiones deben ir antes de la inicialización de la propiedad privada
       _side = side; //Inicialización de la propiedad privada

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Side length must be positive';

    _side = value; //Actualización de la propiedad privada
  }

  double calculateArea() {
    return _side * _side;
  }
}
