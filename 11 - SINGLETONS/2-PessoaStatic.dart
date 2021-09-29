class PessoaStatic {
  static final PessoaStatic instancia = PessoaStatic._construtorNomeado();
  String? nome;
  // PessoaStatic(); //Construtor default, assim poderá instanciar em outro lugar
  PessoaStatic._construtorNomeado();
}
