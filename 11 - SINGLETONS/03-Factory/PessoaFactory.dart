import 'dart:math';

class PessoaFactory {
  static final PessoaFactory instancia =
      PessoaFactory._construtorNomeado("Indefinido");
  String nome;
  factory PessoaFactory() => instancia;
  PessoaFactory._construtorNomeado(this.nome) {
    //É possível também definir outras configurações iniciais
  }
}

class PessoaInstancia {
  static PessoaInstancia? _instancia;
  String? nome;
  final int? _identidade;

  factory PessoaInstancia({String nome = "Indefinido", int? identidade}) {
    identidade =
        (identidade == null) ? Random().nextInt(99999999 + 1) : identidade;
    return _instancia ??= PessoaInstancia._construtorNomeado(nome, identidade);
  }
  PessoaInstancia._construtorNomeado(this.nome, this._identidade) {
    //É possível também definir outras configurações iniciais
  }
  get identidade => _identidade;
}
