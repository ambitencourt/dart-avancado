//>>>>>>>>>>>> CÓDIGO UTILIZADO EM INNER CLASS, OU SEJA DENTRO DE OUTRAS CLASSES <<<<<<<<<<<



// //Classes são objetos, as variáveis dentro das classes são seus atributos e as funções
// //dentro das classe são seus métodos

// import 'dart:math';

// void main() {
//   Pessoa pessoa1 = new Pessoa(); //É necessário instanciar uma classe,
//   //assim teremos acesso aos métodos e atributos de uma classe
//   pessoa1.nome = 'Adriano';
//   pessoa1.idade = 38;
//   print('Nome: ${pessoa1.nome} idade: ${pessoa1.idade}');
//   Pessoa pessoa2 =
//       Pessoa(); //No Dart não precisa declarar new, porém se tratando de imagens
//   //é aconselhável quando acessar a imagem diretamente.
//   pessoa2.nome = 'Bryan';
//   pessoa2.idade = 11;
//   print('Nome: ${pessoa2.nome} idade: ${pessoa2.idade}\n');

//   //Dados inseridos pelo usuário
//   Usuario usuario =
//       Usuario(); //usuario agora passa a ser objeto(Objeto usuario de Usuario)
//   usuario.usuario = 'adriano.mirandabitencourt@gmail.com';
//   usuario.senha = '123456';
//   usuario.autenticar();
//   Conta conta = Conta();
//   print(
//       'Nome: ${conta.nome} Nº Conta: ${conta.numeroConta} Saldo: ${conta.consultarSaldo()}');
//   conta.calcularSalario(1100, 150,
//       2); //Exemplo de dados inseridos para calcular salário a partir de Salário, bônus e faltas
//   conta.depositar(150); // Exemplo de utilização do método depositar
//   conta.sacar(450); // Exemplo de utilização do método sacar
// }

// class Usuario {
//   String usuario =
//       ''; //Para não precisar utilizar o null safety, é necessário iniciar a variável
//   String? senha;
//   void autenticar() {
//     //simulação de dados recuperados de um banco de dados
//     var usuario = 'adriano.mirandabitencourt@gmail.com';
//     var senha = '123456';
//     if (this.usuario == usuario && this.senha == senha) {
//       //O this.usuario refere-se ao usuario da classe, enquanto o que recebe é o da variável autenticar
//       print('Usuário autenticado!\n');
//     } else {
//       print('Usuário não autenticado!\n');
//     }
//   }
// }

// class Conta {
//   String nome = 'Adriano';
//   int numeroConta = Random().nextInt(10000 +
//       1); //Random faz parte da biblioteca Math e gera números aleatórios(randômicos)
//   //e neste caso vai pegar o próximo inteiro até o número 10000
//   double saldo = 0;

//   double consultarSaldo() => this.saldo; //Primeira função de consultar o saldo
//   calcularSalario(double salario, double bonus, int faltas) {
//     var salarioCalculado = this.saldo = (salario * desconto(faltas)) + bonus;
//     print('Salário: $salarioCalculado Bônus: $bonus Faltas: $faltas');
//   }

//   double desconto(int faltas) => (faltas > 1)
//       ? 0.8
//       : (faltas == 1)
//           ? 0.9
//           : 0;
//   void depositar(double valorDeposito) {
//     //Segunda função de depositar
//     // this.saldo +=valorDeposito;
//     // É uma outra maneira de escrever o incremento do this.saldo no valorDeposito
//     this.saldo = this.saldo + valorDeposito;
//     print('Depósito: $valorDeposito Saldo: $saldo');
//   }

//   sacar(double valorSaque) {
//     //Terceira função de sacar do saldo
//     this.saldo = this.saldo - valorSaque;
//     print('Saque: $valorSaque Saldo: $saldo');
//   }
// }

// class Pessoa {
//   //As classes são iniciadas com letra Maiúscula e não possuem parâmetros como funções
// //pois os parâmetros são as variáveis e funções dentro da classe.
//   String? nome;
//   int? idade;
//   void info() {
//     print('Nome: $nome idade: $idade');
//   }
// }
