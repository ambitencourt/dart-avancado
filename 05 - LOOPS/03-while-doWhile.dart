//while faz o teste antes da execução(é o contrário do dowhile, primeiro faz o teste e depois executa)

void main() {
  var numero = 5;
  while (numero > 0) {
    print("while $numero");
    numero--; //para não ficar o loop infinito, é necessário criar uma condição de decremento
  }

//dowhile faz a execução e testa depois(é o contrário do while, primeiro executa e depois faz o teste)

  var contagem = 1;
  do {
    print('dowhile: $contagem');
    contagem++; //faz um incremento até
  } while (contagem <= 3);

  int multiplo = 4;
  int min = 10;
  int max = 20;
  int resultado = min;
  while (resultado <= max) {
    if (resultado % multiplo == 0) {
      print('Primeiro múltiplo de $multiplo entre $min e $max é: $resultado');
      break; //ao achar o primeiro multiplo, interrompe o loop
    }
    resultado++;
  }
}
