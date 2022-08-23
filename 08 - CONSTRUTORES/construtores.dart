import 'CLASSES/01-Objeto.dart';
import 'CLASSES/02-Animal.dart';
import 'CLASSES/03-Pessoa.dart';
import 'CLASSES/04-Usuario.dart';

///
/// Os construtores devem ter o mesmo nome da classe, porém os construtores nomeados podem ter o nome que preferir
/// São iniciados quando instanciamos as classes
/// Podendo fazer configurações iniciais
/// Faz com que a partir de uma classe consiga criar as instâncias.
/// Se for passar parâmetros para o construtor, deve-se setar os parâmetros globais com os locais.
/// Ex:
/// class Pessoa{
/// String? nome;
/// Pessoa(String? primeiroNome){
///   nome = primeiroNome;
///    }
/// }

void main() {
  Objeto objeto = new Objeto();
// É dentro dos parênteses que passamos os parâmetros para obter as configurações inicias
  objeto.nome = 'mesa';
  print('Nome: ${objeto.nome}');
  Animal animal = Animal('Cloe', 'Pug');
  print('Nome: ${animal.nome} raça: ${animal.raca} idade: ${animal.idade}');
  Pessoa pessoa = Pessoa('Adriano', 38, cor: 'Branco', altura: 1.74);
  print(
      'Nome: ${pessoa.nome} idade: ${pessoa.idade} cor: ${pessoa.cor} altura: ${pessoa.altura}');
  //Simulação de dados inseridos pelo usuário
  Usuario usuario = Usuario('adriano.mirandabitencourt@gmail.com', 'abc123',
      nome: 'Adriano'); //Foi passado o parâmetro nomeado nome
  print(
      'Usuário: ${usuario.user} senha: ${usuario.senha} nome: ${usuario.nome} cargo: ${usuario.cargo}');
  usuario.autenticar(); //Para chamar o método autenticar
//Simulação de dados inseridos pelo administrador
  Usuario admin = Usuario.admin('adriano.mirandabitencourt@gmail.com', 'abc123',
      nome: 'Adriano');
  print(
      'Usuário: ${admin.user} senha: ${admin.senha} nome: ${admin.nome} cargo: ${admin.cargo}');
  admin.autenticar();
}
