//Comentários com 3 barras transforma-se em legendas para a função seguinte e basta
//um enter para adicionar automaticamente mais 3 barras

///
///Funções Arrow possuem retorno implícito, ou seja, são direcionadas ao retorno
///

funcaoArrow() {
  String conceito() => 'Função Arrow com retorno implícito\n';
  String somarValores(int valorA, int valorB) =>
      'Soma: $valorA + $valorB = ${valorA + valorB}\n';
  String verificarMaioridade(String nome, int idade) =>
      (idade >= 18) ? '$nome é maior de idade!\n' : '$nome é menor de idade!\n';
  String calcularAreaCirculo(double raio) =>
      'Área do círculo: ${3.14 * raio * raio}\n';
  double desconto(int faltas) => (faltas >
          1) // Nesse teste lógico diz: Se as faltas forem maior que 1, aplique o desconto de 20%
//Se forem iguais a 1, aplique o desconto de 10% e se forem 0 não aplica desconta e soma com os bônus
      ? 0.8 //0.8 = 20%
      : (faltas == 1)
          ? 0.9 //0.9 = 10%
          : 0;
  calcularSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print('Empregado: $nome Salário: $total');
  }

  print(conceito());
  print(somarValores(2, 3));
  print(verificarMaioridade('Adriano', 38));
  print(calcularAreaCirculo(5));
  print(calcularSalario('Adriano', 4500, 1100, 1));
}

void main() {
  funcaoArrow();
}
