import '2-Brasil.dart';

/// * Const
/// Inicializada em tempo de compilação, deve ser declarada com valor constante
/// Ao nível de classes deve ser estática para ficar disponível na classe
/// Em coleções const, todo o conteúdo deve ser constante
///
/// * Para termos um objeto imutável
/// O construtor deve ser constante
/// As variáveis devem ser final ou static const

void main() {
  const pi = 3.14;
  double raio = 2;
  var resultado = pi * (raio * raio);
  print('${resultado}');

  final numeros = [raio, 2.5]; //forma literal
  numeros.add(resultado);
  print(numeros);

  final listaFinal = const [0, 1];
  //listaFinal.add(2); não é possível alterar, pois se trata de uma constante
  print(listaFinal);

  const listaConst = [
    1,
    2,
    pi
  ]; //Ao declarar constante, só aceita valores constantes, o raio por exemplo não é aceito
  //listaConst.add(pi); A lista é constante, não pode alterar
  print('${listaConst}');

  for (var i = 0; i < 3; i++) {
    final indiceFinal = i;
    const constante = 1;
    print('Contagem ${constante + indiceFinal}');
  }
  var pais = Brasil(-15.792371, -47.882326);
  print(
      'Objeto: ${pais} capital: ${Brasil.capital} latitude: ${pais.latitude}longitude: ${pais.longitude}');
  print('Estados: ${Brasil.estados}');
}
