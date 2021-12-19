/*
  *Regras
  - Uma classe pode ter somente uma herança

  *Construtores
  - Devem obedecer a ordem dos parâmetros
  - Parâmetros default devem ser nomeados ou posicionados
  - Tratamento e tipagem de parâmetros deve ser feito na classe bilateral
 */

void main() {
  var cao = Cao("Bolinha", "Poodle", "Masculino");
  print(
    "nome: ${cao.nome}, raça: ${cao.raca}, sexo: ${cao.sexo}, idade: ${cao.idade}, docil: ${cao.docil}",
  );
  cao
    ..dormir()
    ..Alimentar()
    ..acao();
  print(
      '${cao.nome} ${cao.docil == null ? 'está amigável' : 'não está amigável'}');
  //por conta do null safety não pude usar a condição de forma nula, então inferi cao.docil é equivalente a nulo
}

class Animal {
  String? idade;
  bool? docil;
  Animal(this.idade, {this.docil}) {
    //docil ??= false; Não é correto fazer isso, o certo é fazer o tratamento na classe herdeira
  }
  void dormir() {
    print("Dorme como um animal");
  }
}

class Mamiferos extends Animal {
  String? sexo;
  Mamiferos(this.sexo, idade, docil) : super(idade, docil: docil);
  //Quando estende de um atributo, cria-se o parâmetro super
  void Alimentar() {
    print("Se alimenta como um mamífero");
  }
}

class Cao extends Mamiferos {
  String? nome;
  String? raca;
  Cao(this.nome, this.raca, String? sexo, {String? idade, bool? docil = false})
      : super(sexo, idade, docil) {
    this.idade = (idade == null) ? 'indefinido' : idade;
    this.sexo = (sexo == null) ? 'indefinido' : sexo;
  }
  void acao() {
    print("Late como um cao");
  }
}
