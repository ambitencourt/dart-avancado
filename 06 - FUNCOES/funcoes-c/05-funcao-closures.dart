///
/// Uma closure ocorre quando uma função é declarada dentro do corpo de outra função,
/// podendo retornar as variáveis locais e de função superior
///

funcaoClosures() {
  //Closures sem retorno
  var saudacao = (String nome) {
    var mensagem = (complemento) => print('Olá $nome! $complemento');
    mensagem('Seja bem-vindo');
  };
  saudacao('Adriano');

  //Closures com retorno
  Function somar(int valorA) {
    print(valorA); //Printei A para conferir o valor atual de A
    return (valorB) {
      print(valorB);
      return valorA + valorB;
    };
  }

  var somarDez = somar(10); //valor de A
  print(somarDez(5)); //valor de B
  //caso informe o tipo do valor, é necessário que o valor seja desse tipo, caso contrário terá um erro

  Function porcentagem(desconto) =>
      (valor) => desconto * valor; //Closure em única linha com arrow function
  var descontarDez = porcentagem(.9); //.9 é 10%
  var descontarVinte = porcentagem(.8);
  print(descontarDez(150));

//Closures com objetos
  var novoObjeto = () {
    var id = 0;
    var objetoCriado = (String nome, descricao) {
      return 'id: ${(++id).toString().padLeft(2, '0')} nome: $nome, descricao: $descricao'; //Retorna array
      //o++id incrementa antes para que se torne índice 1. toString converte em String e
      //padleft adiciona o valor posicional a esquerda
    };
    return objetoCriado;
  };
  var objeto = novoObjeto();
  //print(objeto); O resultado no console será Closure: (String, dynamic) => String se não houver valores na listaObjetos
  var listaObjetos = [objeto('Adriano', 1.99)];
  listaObjetos.add(objeto(
      'iphone', 3000.00)); //Adicionar à lista de objetos os seguintes valores
  listaObjetos.add(objeto('Phone', 100));
  for (var objeto in listaObjetos) {
    print(objeto);
    print(objeto.substring(7)); //com subtring contará do índice 7 em diante
  }

  print('\n');
  //Exemplo mais avançado

  var novoObjeto1 = () {
    var id = 0;
    var objetoCriado1 = (String nome, descricao) {
      //return 'id: ${(++id).toString().padLeft(2, '0')} nome: $nome, descricao: $descricao'; //Retorna array
      return {
        'id:': (++id).toString().padLeft(2, '0'),
        'nome': nome,
        'descricao': descricao
      }; //Map configurado
      //o++id incrementa antes para que se torne índice 1. toString converte em String e
      //padleft adiciona o valor posicional a esquerda
    };
    return objetoCriado1;
  };
  var objeto1 = novoObjeto1();
  //print(objeto); O resultado no console será Closure: (String, dynamic) => String se não houver valores na listaObjetos
  var listaObjetos1 = [objeto1('Adriano', 1.99)];
  listaObjetos1.add(objeto1(
      'iphone', 3000.00)); //Adicionar à lista de objetos os seguintes valores
  listaObjetos1.add(objeto1('Phone', 100));
  for (var objeto1 in listaObjetos1) {
    print(objeto1);
    //print(objeto1.substring(7)); //com subtring contará do índice 7 em diante
    print(objeto1.map((chave, valor) =>
        MapEntry(chave, (valor is double) ? '${descontarDez(valor)}' : valor)));
    //Aqui houve um mapeamento do map, passando os parâmetros chave/valor
    //Onde cada entrada do map não será analisada pela chave, mas pelo valor
    //E será testada com o ternário valor é um double, se for desconte 10%
    //Se não for apresente o valor
    //O resultado será o seguinte?
    /*
{id:: 01, nome: Adriano, descricao: 1.99} >>> Valor sem o map
{id:: 01, nome: Adriano, descricao: 1.791} >>> Valor com o map e descontado porque é double
{id:: 02, nome: iphone, descricao: 3000.0}
{id:: 02, nome: iphone, descricao: 2700.0}
{id:: 03, nome: Phone, descricao: 100}
{id:: 03, nome: Phone, descricao: 100} >>> Aqui não houve desconto porque 100 é int
    */
  }

  var novoObjeto2 = () {
    var id2 = 0;
    var objetoCriado2 = (String nome, descricao) {
      return Objeto.fromMap({
        'id:': (++id2).toString().padLeft(2, '0'),
        'nome': nome,
        'descricao': descricao
      });
    };
    return objetoCriado2;
  };
  var objeto2 = novoObjeto2();
  print(objeto2);
  //print(objeto); O resultado no console será Closure: (String, dynamic) => String se não houver valores na listaObjetos
  var listaObjetos2 = [objeto2('Adriano', 1.99)];
  listaObjetos2.add(objeto2(
      'iphone', 3000.00)); //Adicionar à lista de objetos os seguintes valores
  listaObjetos2.add(objeto2('Phone', 100));
  for (var objeto2 in listaObjetos2) {
    print((objeto2.descricao is num)
        ? descontarVinte(objeto2.descricao)
        : objeto2.descricao);
  }
}

//Closures retorno de objetos

class Objeto {
  //classes não usam parâmetros como funções
  String? id2, nome;
  dynamic descricao;
  Objeto(
      {this.id2,
      this.nome,
      this.descricao}); //Construtor da classe Objetos nomeados
  factory Objeto.fromMap(Map<String, dynamic> mapa) {
    return Objeto(
        id2: mapa['id'].toString(),
        nome: mapa['nome'].toString(),
        descricao: mapa['descricao'].toString);
  }
}

void main() {
  funcaoClosures();
}
