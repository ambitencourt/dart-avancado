void main() {
  for (var i = 1; i <= 3; i++) {
    print(i);
  } //o primeiro parâmetro é a inicialização da variável, ou seja, define o valor do índice
  //o segundo parâmetro compara com índice e o terceiro parâmetro incrementa ou decrementa

  for (var i = 15; i >= 0; i -= 5) {
    //a operação -= decrementará de 5 em 5 de 15 até atingir 0
    print(i);
  }
  String nome = 'Leila';
  int numero = 0;
  for (var i = numero; i < nome.length; i++) {
    //nome.lenght faz a contagem das letras
    if (i % 2 == 0) {
      // o i inicia em zero, vai incrementando de um em um(i++) e a cada incremento divide por 2
      //para verificar se tem resto, se tiver é ímpar e se não tiver é par
      print('$i é par');
    } else {
      print('$i é ímpar');
    }
    //utilizando ternário
    print('$i ${(i % 2 == 0) ? 'é par' : 'é impar'}');

    print('');

    for (var i = 0; i < nome.length; i++) {
      print(
          '${nome.substring(i, i + 1)}'); //utiliza o i como parâmetro inicial, e o final é i + 1 até terminar o nome

    }
    //quais os múltiplos de 2 e 3 no intervalo de 5 a 12
    for (var i = 5; i <= 12; i++) {
      //como é entre 5 e 12, o i inicia em 5 e i é menor e igual a 12, assim vai incrementando de um em um
      if (i == 0) {
        //se i for igual a zero
        print('$i é múltiplo de todos os números');
      } else if (i % 2 == 0 && i % 3 == 0) {
        print('$i é múltiplo de 2 e 3');
      } else if (i % 3 == 0) {
        print('$i é múltiplo de 3');
      } else if (i % 2 == 0) {
        print('$i é múltiplo de 2');
      } else if (i % 3 == 0) {
        print('$i');
      } else {
        print('$i é um número primo');
      }
    }
  }

  print('');

  dynamic frutas = ['tomate', 'manga', 'pera', 'maçã'];
  for (int i = 0; i < frutas.length; i++) {
    print('for: $i ${frutas[i]}');
  }

  //for-in: controle de índice automatizado crescente, utilizado para percorrer a lista de ítens
  print('');
  for (var fruta in frutas) {
    print('for-in: $fruta');
  }

//Exemplo com explicação da lógica
  ///Names é uma lista e cada elemento da lista possui um index(índice)
  var names = ['Adriano', 'Bryan', 'Catiana', 'Vitória'];

  ///Para (i inicia no index 0; enquanto i for menor que a contagem total de nomes;
  ///vai incrementar mais um index em i);

  for (var i = 0; i < names.length; i++) {
    ///Imprima(os nomes baseados no index de i)
    print(names[i]);
  }
}
