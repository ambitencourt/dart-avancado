class Usuario {
  String usuario =
      ''; //Para não precisar utilizar o null safety, é necessário iniciar a variável
  String? senha;
  void autenticar() {
    //simulação de dados recuperados de um banco de dados
    var usuario = 'adriano.mirandabitencourt@gmail.com';
    var senha = '123456';
    if (this.usuario == usuario && this.senha == senha) {
      //O this.usuario refere-se ao usuario da classe, enquanto o que recebe é o da variável autenticar
      print('Usuário autenticado!\n');
    } else {
      print('Usuário não autenticado!\n');
    }
  }
}
