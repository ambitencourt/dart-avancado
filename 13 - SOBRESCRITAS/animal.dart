abstract class Animal {
  String idade;
  bool? docil;
  bool? coluna;

  Animal.vertebrados(this.idade, {this.docil}) {
    this.coluna = true;
  }

  Animal.invertebrados(this.idade, {this.docil}) {
    this.coluna = false;
  }

  void dormir() {
    print('Dorme como um animal');
  }
}
