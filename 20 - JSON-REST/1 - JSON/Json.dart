/*
Representational State Transfer(Transferência de Estado Representacional)
 é um estilo de arquitetura de software que define um conjunto de restrições 
 a serem usadas para a criação de web services.
 É uma padronização para que múltiplas aplicações possam se comunicar usando protocolo http
 */

import 'dart:convert';

///
///SERIALIZAÇÃO MANUAL - biblioteca JSON integrada ao dart 'dart:convert'
///
///SERIALIZAÇÃO JSON DIRETA:
/// - Perde recursos estáticos da linguagem
/// - Não possui segurança de tipo, autocompletar e exceções de tempo de compilação
///

void main() {
  conversaoDireta();
  conversaoObjeto();
}

conversaoDireta() {
  //SERIALIZAÇÃO MANUAL
  String jsonData = '''
  {
    "nome": "Adriano",
    "idade": 38,
    "email": "bitencourtuva@bol.com.br"
  }
  ''';
  //DECODE
  //O map abaixo é baseado no Json acima, onde a chave é do tipo String e o valor Dinâmico
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson; $parsedJson');
  //SERIALIZAÇÃO DIRETA
  String? nome = parsedJson['nome'];
  int? idade = parsedJson['idade'];
  String? email = parsedJson['email'];
  print('USO DIRETO> nome: $nome idade: $idade email: $email ');

  //ENCODE
  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};
  String? toJson = jsonEncode(map);
  print('toJson: $toJson');
}

///SERIALIZAÇÃO JSON OBJETO:
/// - Utiliza recursos estáticos de linguagens
/// - Segurança de tipos, autocompletar e exceções de tempo de compilação
///
conversaoObjeto() {
  //JSON COM ARRAY DE OBJETOS
  //CUIDADO PARA NÃO TER OBJETOS DUPLICADOS
  String jsonData = '''
  [{
    "nome": "Adriano",
    "idade": 38,
    "email": "bitencourtuva@bol.com.br"
  },
  {
    "nome": "Bryan",
    "idade": 11,
    "email": "lordoso12@gmail.com.br"
  } 
  ]
  ''';

  //DECODE
  List<dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson: $parsedJson');
  ListaUsuarios listaUsuarios = ListaUsuarios.fromJSON(parsedJson);
  //Através da orientação a objetos , é possível chamar o objeto através do índice da lista
  //Para não ter que interpolar o caminho completo todas as vezes, utiliza-se o esquema abaixo
  Usuario usuario =
      listaUsuarios.usuarios.singleWhere((e) => e.nome == 'Adriano');
  print(
      'USO OBJETO> nome: ${usuario.nome}, email: ${listaUsuarios.usuarios[0].email}');
  var usuarioNovo = Usuario.fromJSON(
      {'nome': 'Rosália', 'idade': 72, 'email': 'rosalia.mb49@gmail.com'});
  listaUsuarios.usuarios.addAll([usuarioNovo]);
  //ENCODE
  List<dynamic>? lista = listaUsuarios.toJson();
  String? toJson = json.encode(lista);
  print('toJson: $toJson');
}

//Data Class
class ListaUsuarios {
  List<Usuario> usuarios;

  //Construtor default da classe
  ListaUsuarios({
    required this.usuarios,
  });

//? Construtor com lista de inicialização, usa this para passar os parâmetros para o construtor default
  ListaUsuarios.fromJSON(List<dynamic> json)
      : this(
          usuarios: json.map((e) => Usuario.fromJSON(e)).toList(),
        );

  List<dynamic>? toJson() {
    return usuarios;
  }
}

class Usuario {
  String? nome;
  int? idade;
  String? email;

  //?Construtor default da classe
  Usuario({
    this.nome,
    this.idade,
    this.email,
  });

//DECODE
//?Construtor nomeado para criar uma nova instância a partir de um map
//construtor nomeado simples
  // Usuario.fromJSON(Map<String, dynamic> json) {
  //   this.nome = json['nome'];
  //   this.idade = json['idade'];
  //   this.email = json['email'];
  // }

  //?Construtor com lista de inicialização, define parâmetros antes de executar o escopo do construtor
  // Usuario.fromJSON(Map<String, dynamic> json)
  //    : nome: json['nome'],
  //     idade: json['idade'],
  //     email: json['email']{
  //configurações iniciais
  // }

  //? Construtor com lista de inicialização, usa this para passar os parâmetros para o construtor default
  Usuario.fromJSON(Map<String, dynamic> json)
      : this(
          nome: json['nome'],
          idade: json['idade'],
          email: json['email'],
        );

//ENCODE
  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'email': email,
    };
  }
}
