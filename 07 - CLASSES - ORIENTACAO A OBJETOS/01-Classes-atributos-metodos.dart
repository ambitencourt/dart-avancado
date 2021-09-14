//Classes são objetos, as variáveis dentro das classes são seus atributos e as funções
//dentro das classe são seus métodos

import 'CLASSES/Conta.dart';
import 'CLASSES/Pessoa.dart';
import 'CLASSES/Usuario.dart';

void main() {
  Pessoa pessoa1 = new Pessoa(); //É necessário instanciar uma classe,
  //assim teremos acesso aos métodos e atributos de uma classe
  pessoa1.nome = 'Adriano';
  pessoa1.idade = 38;
  print('Nome: ${pessoa1.nome} idade: ${pessoa1.idade}');
  Pessoa pessoa2 =
      Pessoa(); //No Dart não precisa declarar new, porém se tratando de imagens
  //é aconselhável quando acessar a imagem diretamente.
  pessoa2.nome = 'Bryan';
  pessoa2.idade = 11;
  print('Nome: ${pessoa2.nome} idade: ${pessoa2.idade}\n');
  var pessoa3 = Pessoa();
  pessoa3 //Como já existe a classe, basta transformar os dados em cascata
    ..nome = 'Catiana'
    ..idade = 37
    ..info(); //Ao final requisitando as informações no console
  //Dados inseridos pelo usuário
  Usuario usuario =
      Usuario(); //usuario agora passa a ser objeto(Objeto usuario de Usuario)
  usuario.usuario = 'adriano.mirandabitencourt@gmail.com';
  usuario.senha = '123456';
  usuario.autenticar();
  Conta conta = Conta();
  print(
      'Nome: ${conta.nome} Nº Conta: ${conta.numeroConta} Saldo: ${conta.consultarSaldo()}');
  conta.calcularSalario(1100, 150,
      2); //Exemplo de dados inseridos para calcular salário a partir de Salário, bônus e faltas
  conta.depositar(150); // Exemplo de utilização do método depositar
  conta.sacar(450); // Exemplo de utilização do método sacar
}
