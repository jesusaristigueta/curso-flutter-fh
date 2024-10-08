void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://jesusaristigueta.com');
    print('exito: $value');
  } on Exception catch (err) {
    print('Tenemos una Exception! $err');
  } catch (err) {
    print('Tenemos un error: $err');
  } finally {
    print('Fin del try-catch-finally');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parametros en el URL'); // Error controlado, especifico

  //throw 'Error en la peticion HTTP'; //erro no controlado, generico

  //return 'Tenemos un valor de la peticion';
}
