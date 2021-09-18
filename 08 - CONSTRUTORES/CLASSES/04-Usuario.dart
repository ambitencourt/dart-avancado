//>>>>>> Construtor personalizado <<<<<<<<<
class Usuario {
  String? user, nome, senha, cargo;
  int? idade;
  Usuario(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome == null) ? 'sem nome' : nome;
    this.cargo = (cargo == null) ? 'Usuario' : cargo;
    print(
        'Contrutores resumidos com parâmetros nomeados default: ${this.toString()}');
  }
  Usuario.admin(this.user, this.senha, {this.nome}) {
    //Construtor nomeado, deve iniciar com minúsculo
    //pode personalizar
    this.nome = (nome == null) ? 'sem nome' : nome;
    this.cargo = 'Administrador';
    print(
        'Contrutores resumidos com parâmetros nomeados default: ${this.toString()}');
  }

  void autenticar() {
    //simulação de dados recuperados do banco de dados
    var user = 'adriano.mirandabitencourt@gmail.com';
    var senha = 'abc123';
    (this.user == user && this.senha == senha)
        ? print('Usuário autenticado')
        : print('Usuário não autenticado');
  }
}
//>>>>>> Construtor personalizado <<<<<<<<<<<<<<<<<<
