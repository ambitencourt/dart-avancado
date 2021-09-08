///
/// Uma closure ocorre quando uma função é declarada dentro do corpo de outra função,
/// podendo retornar as variáveis locais e de função superior
///

funcaoClosures() {
  //Closures sem retorno
  var saudacao = (String nome) {
    var mensagem = (complemento) => print('Olá $nome! $complemento');
    mensagem('Seja bem-vindo');
  };
  saudacao('Adriano');

  //Closures com retorno
  Function somar(int valorA) {
    print(valorA); //Printei A para conferir o valor atual de A
    return (valorB) {
      print(valorB);
      return valorA + valorB;
    };
  }

  var somarDez = somar(10); //valor de A
  print(somarDez(5)); //valor de B
}

void main() {
  funcaoClosures();
}
