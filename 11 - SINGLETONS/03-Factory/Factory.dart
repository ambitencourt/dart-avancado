/* * SINGLETON
É um padrão de projeto para que exista apenas uma instância de classe
O construtor nomeado privado sem o construtor default impede de instanciar a classe
* FACTORY
- Construtor Factory é usado para retornar/manter a instância original.
- É capaz de retornar valores
*/
import 'PessoaFactory.dart';

singletonFactory() {
  var p1 = PessoaFactory();
  print(p1.nome);
  p1.nome = 'Adriano';
  print(PessoaFactory.instancia.nome);
  PessoaFactory.instancia.nome = 'Bryan';
  print(p1.nome);
  var p2 = PessoaFactory();
  print(PessoaFactory.instancia.nome);
  PessoaFactory.instancia.nome = 'Rosália';
  print(p2.nome);
}

singletonInstancia() {
  var p1 = PessoaInstancia(nome: 'Adriano');
  print('nome: ${p1.nome} id: ${p1.identidade}');
  var p2 = PessoaInstancia(nome: 'Bryan', identidade: 12345678);
  print('nome: ${p2.nome} id: ${p2.identidade}');
  p2.nome = 'Rosália';
  print('nome: ${p1.nome} id: ${p1.identidade}');
  print(identical(p1, p2));
  //print(p2 == PessoaInstancia.instancia); Só está acessível se remover o atributo privado do instancia
}

void main() {
  singletonInstancia();
  singletonFactory();
}
