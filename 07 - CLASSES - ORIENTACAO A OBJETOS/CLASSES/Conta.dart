import 'dart:math';

class Conta {
  String nome = 'Adriano';
  int numeroConta = Random().nextInt(10000 +
      1); //Random faz parte da biblioteca Math e gera números aleatórios(randômicos)
  //e neste caso vai pegar o próximo inteiro até o número 10000
  double saldo = 0;

  double consultarSaldo() => this.saldo; //Primeira função de consultar o saldo
  calcularSalario(double salario, double bonus, int faltas) {
    var salarioCalculado = this.saldo = (salario * desconto(faltas)) +
        bonus; //O saldo recebe o valor do sálario x o desconto das faltas e mais o bônus
    print('Salário: $salarioCalculado Bônus: $bonus Faltas: $faltas');
  }

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;
  void depositar(double valorDeposito) {
    //Segunda função de depositar
    // this.saldo +=valorDeposito;
    // É uma outra maneira de escrever o incremento do this.saldo no valorDeposito
    this.saldo = this.saldo + valorDeposito;
    print('Depósito: $valorDeposito Saldo: $saldo');
  }

  sacar(double valorSaque) {
    //Terceira função de sacar do saldo
    this.saldo = this.saldo - valorSaque;
    print('Saque: $valorSaque Saldo: $saldo');
  }
}
