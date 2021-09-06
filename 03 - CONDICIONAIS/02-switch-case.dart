void main() {
  String operacao = '-';
  double numeroA = 12, numeroB = 3;

  switch (operacao) {
    case ('+'):
      print('Resultado ${numeroA + numeroB}');
      break;
    case ('-'):
      print('Resultado ${numeroA - numeroB}');
      break;
    case ('*'):
      print('Resultado ${numeroA * numeroB}');
      break;
    case ('/'):
      print('Resultado ${numeroA + numeroB}');
      break;
    default:
      print('Operação Inválida');
  }
}
