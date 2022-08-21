import 'mamiferos.dart';

class Cao extends Mamiferos {
  String nome;
  String raca;

  Cao.domestico(this.nome, this.raca, String sexo,
      {String idade = 'indefinido', bool docil = true})
      : super.placentarios(sexo, idade, docil: docil);
  Cao.selvagem(this.nome, this.raca, String sexo,
      {String idade = 'indefinido', bool docil = true})
      : super.placentarios(sexo, idade, docil: docil);

  @override //Sobrescreve o método da classe herdada(super)
  //O método dormir já existe, mas quando aplico um override, ele sobrescreve pelo novo método.
  void dormir() {
    print('Dorme como um cão!');
  }

  //@override Nesse caso o override é opcional, pois o Dart identifica classes com o mesmo nome e identifica
  //Com o super podemos mesclar os atributos da classe/método do pai, com o do filho
  //Nesse caso irá sobrescrever mesclando todos os atributos.
  void alimentar() {
    super.alimentar();
    print('cão');
  }
}
