import '2-PessoaStatic.dart';

/// * SINGLETON
/// É um padrão de projeto para que exista apenas uma instância de classe
/// O construtor nomeado privado sem o construtor default impede de instanciar a classe
/// * STATIC
/// A instância pode ser acessada diretamente

void main() {
  print(PessoaStatic.instancia.nome);
  // var teste = PessoaStatic();
  // teste.nome =
  //     "Adriano"; //Assim poderá utilizar o atributo nome, atrás da variável instanciada
  PessoaStatic.instancia.nome =
      "Adriano"; //Após passar o construtor nomeado, é possível instanciar diretamente e utilizar o atributo
  print(PessoaStatic.instancia.nome);
  var p1 = PessoaStatic
      .instancia; //Utilizando objetos instanciados poderemos atribuir novos valores
  var p2 = PessoaStatic.instancia;
  p1.nome = 'Bryan';
  print(PessoaStatic.instancia.nome);
  p2.nome = 'Catiana';
  print(PessoaStatic.instancia.nome);
  print(identical(
      p1, p2)); //São idênticos pois se tratam da mesma instância de classe
  print(p2 ==
      PessoaStatic
          .instancia); //O Construtor privado impede a construção de novas classes e de criar novos objetos
}
