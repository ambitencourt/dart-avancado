//>>>>>> Construtor com parâmetros nomeados, default e de maneiras diferentes de tratar os parâmetros <<<<<<<<<
class Pessoa {
  String? nome;
  int? idade;
  String? cor;
  double? altura;

  Pessoa(this.nome, this.idade, {String? cor, this.altura = 0}) {
    //dessa forma passa o parâmetro diretamente
    //O this.altura foi definido como default
    this.cor = (cor == null) ? 'indefinida' : cor;
    //quando se quer fazer um tratamento de um parâmetro, como boas práticas, dentro do escopo do construtor
    print('Construtor resumido com parâmetros nomeados: ${this.toString()}');
  }
}
//>>>>>> Construtor com parâmetros nomeados, default e de maneiras diferentes de tratar os parâmetros <<<<<<<<<
