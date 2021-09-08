//Função com parâmetros posicionados e default

funcaoParametros() {
  exibirDados1(String nome, [int peso = 70, double altura = 1.74]) {
    //Parâmetros posicionados transformam os valores em opcionais com valor default com o uso de colchetes usando na ordem
    //Não se pode posicionar o primeiro valor somente, apenas o último, ou que o parâmetro selecionado tenha o último
    print('Nome: $nome peso: $peso altura: $altura');
  }

  exibirDados1(
      'Adriano'); //Nesse caso os dois parâmetros não foram declarados aqui, como foram posicionados como default, os valores já foram informados.

  exibirDados2(String nome, {int? peso, required double altura}) {
    //Parâmetros nomeados transformam os valores em opcionais com valor default com o uso de chaves, assim usando em qualquer ordem
    //Não se pode posicionar o primeiro valor somente, apenas o último, ou que o parâmetro selecionado tenha o último
    //É obrigatório iniciar os valores ou informar um required ou deixar como nullable(null como default)
    print('Nome: $nome peso: $peso altura: $altura');
  }

  exibirDados2('Adriano',
      altura: 1.74,
      peso:
          70); //Nesse caso os dois parâmetros não foram declarados aqui, como foram posicionados como default, os valores já foram informados.
  void falar() {
    print('Essa é uma função passada como parâmetro nomeado');
  }

  void saudacao(String nome, {required Function funcaoFalar}) {
    print("Olá, eu sou $nome!");
    funcaoFalar();
  }

  saudacao('Adriano', funcaoFalar: falar);
  saudacao(
    'Adriano',
    funcaoFalar: () => print('Essa é uma função anônima'),
  ); //Função anônima não nomeia a função e utiliza arrow function
}

void main() {
  funcaoParametros();
}
