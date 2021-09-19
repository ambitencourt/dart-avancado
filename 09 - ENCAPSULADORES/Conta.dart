import 'dart:math';

//Utilizando a tecla F2 poderá alterar de uma vez só qualquer coisa

class Conta {
  bool alterarLimite = false;
  int _numeroConta = 3456;
  String _nome = "";
  double _saldo = 0;
  double _limite = 500;
  Conta(String nome) {
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print(
        'Conta número: "${_numeroConta}" Titular: "${_nome}" criada com sucesso!');
  }
  //Construtor personalizado
  Conta.vip(String nome, {double limite = 10000}) {
    this.alterarLimite = true;
    this._limite = limite;
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print(
        'Conta número: "${_numeroConta}" Titular: "${_nome}" criada com sucesso!');
  }
  //getter padrão
  int get numeroConta {
    return this._numeroConta;
  }

  get saldo => this._saldo;
  //Setter padrão
  set limite(double limite) {
    if (alterarLimite) {
      this._limite = limite;
      print('Limite alterado para o valor ${_limite}');
    } else {
      print('Permissão negada, alteração limite do titular');
    }
  }

//getter e setter customizáveis
  String get informacao =>
      'Titular: ${_nome} Nº Conta: ${_numeroConta} Saldo Atualizado ${_saldo}';

  set deposito(double deposito) {
    if (deposito > 0) {
      this._saldo += deposito;
      print('Depósito valor: $deposito Saldo Atualizado: $_saldo');
    }
  }

  set saque(double saque) {
    if (saque > 0 && saque <= _limite) {
      if (saque <= _saldo) {
        this._saldo -= saque;
        print('Saque valor: $saque Saldo Atualizado: $_saldo');
      } else {
        print('Saldo valor: $_saldo insuficiente para saque de: $saque');
      }
    } else {
      print('Limite para saque: $_limite');
    }
  }
}
