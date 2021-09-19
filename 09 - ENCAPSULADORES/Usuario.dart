class Usuario {
  bool alteracao = false;
  String nome = "";
  String _senha = "";

  Usuario(this.nome, String senha) {
    this._senha = senha;
  }
  // Getter padrão
  //Get retorna o valor do atributo privado
  String get senha {
    return _senha;
  }

  // Setter padrão
  //Set altera o valor do atributo privado
  set senha(String senha) {
    if (alteracao) {
      _senha = senha;
      print("Senha alterada com sucesso");
    } else {
      print("Erro: Acesso negado");
    }
  }
}
