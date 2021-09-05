void main() {
  var nome2 = 'Adriano';
  print('Meu nome é ' +
      "$nome2"); //Quando se trata de interpolação, pode usar o dólar sem chaves
// var nome = 'Adriano';
// print('Meu nome é = ${nome}'); //Quando se trata de operação, é necessário o uso de chaves
// É importante identificar a variável, pois o DART testa cada variável não declarada para saber de qual se trata, e se já identificar, otimiza o código.
// Variáveis do tipo var, não podem ser alteradas no tipo após atribuição da mesma:
// Ex: var numero = 3;
// numero = 'três'; //Nesse caso não pode alterar para string, pois o valor atribuído anteriormente foi um inteiro, então só pode alterar para outro inteiro
// Obs: No caso de variável do tipo dynamic, esse problema não ocorre, pode alterar para qualquer tipo e valor.

// Num(int, double), String, bool, dynamic (num pode ser esses tipos como principal int e double)
// Ex:
  num pi = 3.14;
  print(pi.floor()); //3 >>floor arredonda para fração inteira
  print(pi.round()); //3 >>round arredonda para inteiro mais próximo
  print(pi.clamp(3, 3.1)); //3.1 >>define o limite menor e o maior
  print(pi.compareTo(
      3)); //1 >>retorna o valor -1 se for inferior ao comparado, 0 se for igual e 1 se for maior
  print(pi.remainder(
      3)); //0.14000000000000012 >>resto da divisão pelo objeto informado
  print(pi.toInt()); //3 >>converte para inteiro
  print(2.toDouble()); //2.0 >>converte para double
  print(pi.toString()); //3.14 >>converte para String
  print(pi.toStringAsFixed(1)); //3.1 >>converte para string com casas fixas
  print(pi.truncate()); //3 >>descarta dígitos fracionários
  print(pi
      .isNegative); //false >>função get que verifica se é negativo, retorna bool
  print(pi
      .isInfinite); //false >>função get que verifica se é infinito, retorna bool
  print((pi / 0)
      .isInfinite); //true >>função get que verifica se é infinito, retorna bool
  print(
      12.gcd(16)); //4 >>traz o MDC do valor atribuido, nesse caso entre 12 e 16
}
