// ///
// /// Os construtores devem ter o mesmo nome da classe
// /// São iniciados quando instanciamos as classes
// /// Podendo fazer configurações iniciais
// ///

// void main() {
//   Objeto objeto = new Objeto();
// // É dentro dos parênteses que passamos os parâmetros para obter as configurações inicia
//   objeto.nome = 'mesa';
//   print('Nome: ${objeto.nome}');
//   Animal animal = Animal('Cloe', 'Pug');
//   print('Nome: ${animal.nome} raça: ${animal.raca} idade: ${animal.idade}');
//   Pessoa pessoa = Pessoa('Adriano', 38, cor: 'Branco', altura: 1.74);
//   print(
//       'Nome: ${pessoa.nome} idade: ${pessoa.idade} cor: ${pessoa.cor} altura: ${pessoa.altura}');
//   //Simulação de dados inseridos pelo usuário
//   Usuario usuario = Usuario('adriano.mirandabitencourt@gmail.com', 'abc123',
//       nome: 'Adriano'); //Foi passado o parâmetro nomeado nome
//   print(
//       'Usuário: ${usuario.user} senha: ${usuario.senha} nome: ${usuario.nome} cargo: ${usuario.cargo}');
//   usuario.autenticar(); //Para chamar o método autenticar
// //Simulação de dados inseridos pelo administrador
//   Usuario admin = Usuario.admin('adriano.mirandabitencourt@gmail.com', 'abc123',
//       nome: 'Adriano');
//   print(
//       'Usuário: ${admin.user} senha: ${admin.senha} nome: ${admin.nome} cargo: ${admin.cargo}');
//   admin.autenticar();
// }

// //>>>>>> Construtor sem parâmetros <<<<<<<<<
// class Objeto {
//   String? nome;
//   Objeto() {
//     print('Construtor sem parâmetro! ${this.toString()}');
//   }
// }
// //>>>>>> Construtor sem parâmetros <<<<<<<<<

// //>>>>>> Construtor com parâmetros posicionados e default <<<<<<<<<
// class Animal {
//   String? nome;
//   String? raca;
//   int? idade;
//   Animal(String? nome, [String? raca, int idade = 0]) {
//     this.nome =
//         nome; //this.nome é o atributo, nome é o parâmetro passado pelo construtor
//     this.raca = raca;
//     this.idade = idade;
//     print('Construtor com parâmetros default ${this.toString()}');
//   }
// }
// //>>>>>> Construtor com parâmetros posicionados e default <<<<<<<<<

// //>>>>>> Construtor com parâmetros nomeados, default e de maneiras diferentes de tratar os parâmetros <<<<<<<<<
// class Pessoa {
//   String? nome;
//   int? idade;
//   String? cor;
//   double? altura;

//   Pessoa(this.nome, this.idade, {String? cor, this.altura = 0}) {
//     //dessa forma passa o parâmetro diretamente
//     //O this.altura foi definido como default
//     this.cor = (cor == null) ? 'indefinida' : cor;
//     //quando se quer fazer um tratamento de um parâmetro, como boas práticas, dentro do escopo do construtor
//     print('Construtor resumido com parâmetros nomeados: ${this.toString()}');
//   }
// }
// //>>>>>> Construtor com parâmetros nomeados, default e de maneiras diferentes de tratar os parâmetros <<<<<<<<<

// //>>>>>> Construtor personalizado <<<<<<<<<
// class Usuario {
//   String? user, nome, senha, cargo;
//   int? idade;
//   Usuario(this.user, this.senha, {this.nome, String? cargo}) {
//     this.nome = (nome == null) ? 'sem nome' : nome;
//     this.cargo = (cargo == null) ? 'Usuario' : cargo;
//     print(
//         'Contrutores resumidos com parâmetros nomeados default: ${this.toString()}');
//   }
//   Usuario.admin(this.user, this.senha, {this.nome}) {
//     //Construtor nomeado, deve iniciar com minúsculo
//     //pode personalizar
//     this.nome = (nome == null) ? 'sem nome' : nome;
//     this.cargo = 'Administrador';
//     print(
//         'Contrutores resumidos com parâmetros nomeados default: ${this.toString()}');
//   }

//   void autenticar() {
//     //simulação de dados recuperados do banco de dados
//     var user = 'adriano.mirandabitencourt@gmail.com';
//     var senha = 'abc123';
//     (this.user == user && this.senha == senha)
//         ? print('Usuário autenticado')
//         : print('Usuário não autenticado');
//   }
// }
// //>>>>>> Construtor personalizado <<<<<<<<<<<<<<<<<<
