class PessoaGetter {
  static final PessoaGetter _instancia = PessoaGetter._construtorNomeado();
  //Após atribuir o construtor nomeado, basta passar o construtor para a instância.
  //Se utilizar atributo privado, é necessário um Getter para torná-lo visível em outras classes
  String? nome; //atributo a ser acessado
  PessoaGetter._construtorNomeado();

  static PessoaGetter get instancia {
    return _instancia;
  }
}
