void semRetorno() {
  //Função sem retorno de abrangência global, pois está fora da main
  void conceito() {
    //Função com abrangência local, porém o dentro de uma global.
    print("Função void sem retorno\n");
  }

  void somarValores(int valorA, int valorB) {
    //Função com parâmetros sem retorno
    var resultado = valorA + valorB;
    print("Soma $valorA + $valorB =  $resultado\n");
  }

  void verificarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'é menor';
    }
    print('$nome $resposta de idade\n');
  }

  void contagemRegressiva(int numero) {
    for (int i = numero; i >= 0; i--) {
      print('Contagem: ${(i == 0) ? 'VAI!!!\n' : i}');
    }
  }

  converterKParaMilhas(dynamic array) {
    //No DART não precisa informar o void
    dynamic milha = 0.621271;
    for (dynamic item in array) {
      print('$item\t Km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    print('\nArray convertido e arredondado\n');
  }

  //Chamada das funções
  conceito(); //Para uma função funcionar é necessário declará-la e depois chamá-la
  somarValores(2, 3); //Inserindo os valores diretamente ao chamar a função
  verificarMaioridade('Adriano', 38);
  contagemRegressiva(5);
  converterKParaMilhas(
      [1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]);
}

comRetorno() {
  print("\nFunção com retorno\n");
  String conceito() {
    //Nessa função está dizendo que seu conteúdo retornado será String
    return 'Função com retorno String'; //O que será retornado
  }

  String somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    return "Soma $valorA + $valorB =  $resultado\n";
  }

  String verificarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'é menor';
    }
    return '$nome $resposta de idade\n';
  }

  String contagemRegressiva(int numero) {
    var resultado; //foi criada uma variável para receber o valor do FOR
    for (var i = numero; i >= 0; i--) {
      //alterei de int para var para receber um valor variável
      (i != 0)
          ? print('Contagem: $i')
          : resultado =
              'Vai!!!'; // para sair do loop utilizou uma função ternária
    }
    return resultado;
  }

  String converterKParaMilhas(dynamic array) {
    //É aconselhável que sempre tipe as funções
    //No DART não precisa informar o void
    dynamic milha = 0.621271;
    for (dynamic item in array) {
      print('$item\t Km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    return '\nArray convertido e arredondado\n';
  }

  print(
      conceito()); // Além de chamar a função, é necessário efetuar o print no console(quando for no console)
  print(
      somarValores(2, 3)); //Inserindo os valores diretamente ao chamar a função
  print(verificarMaioridade('Adriano', 38));
  print(contagemRegressiva(5));
  print(converterKParaMilhas(
      [1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]));
}

void main() {
  semRetorno(); //Para uma função funcionar é necessário declará-la e depois chamá-la
  comRetorno();
}
