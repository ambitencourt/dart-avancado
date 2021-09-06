void main() {
  //>>>>>>>>>>>>>>>>>>>>>   Strings <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  String nome = "Adriano";
  String nomeCompleto = "\t Adriano Miranda Bitencourt ";
  print(nome.toLowerCase()); //adriano >>coloca todas as letras em minusculo
  print(nome.toUpperCase()); //ADRIANO >>coloca todas as letras em minusculo
  print(nomeCompleto
      .trim()); //Adriano Miranda Bitencourt >>remove espaços do inicio e do fim
  print(nome.toLowerCase()); //adriano >>coloca todas as letras em minusculo
  print(nome.toLowerCase()); //adriano >>coloca todas as letras em minusculo
  print(nomeCompleto.split(
      " ")); //[	, Adriano, Miranda, Bitencourt, ] >>divide a string com o parâmetro que passar e retorna um array
  print(nome
      .split("")); //[A, d, r, i, a, n, o] >>divide a string e retorna um array
  print(nome.substring(3,
      5)); //ia >>o substring utiliza o lenght para contar o índica de cada elemento,
  //então retorna a posição inicial até a final partindo do índice zero
  print(nome.startsWith(
      'A')); //true >> retorna um valor booleano caso inicie com a String mencionada no parâmetro
  print(nome.startsWith('riano',
      2)); //true >> retorna um valor booleano caso inicie com a String mencionada no parâmetro com o index mencionado
  print(nome.endsWith(
      'o')); //true >> retorna um valor booleano caso termine com a String mencionada no parâmetro
  print(nome.replaceAll('a',
      'o')); //Adriono >> substitui o primeiro parâmetro pelo segundo parâmetro
  print(nome.replaceFirst('Adr',
      'V')); //Viano >> substitui as iniciais colocadas no primeiro parâmetro pelo segundo parâmetro
  print(nome.replaceFirst('o', 'a',
      6)); //Adriana >> substitui as iniciais colocadas no primeiro parâmetro pelo segundo parâmetro, de acordo com o índico informado
  print(nome.replaceRange(
      2, 4, "")); //Adano >> substitui pelo parâmetro entre o range informado
  print(nomeCompleto.trim().split(
      " ")); //[Adriano, Miranda, Bitencourt] >>> divide a string com o parâmetro que passar e retorna um array combinado
  //assim o trim remove os espaços, e o split transforma cada palavra em um elemento do array
  print(nome.contains(
      'f')); //false >>> verifica se o parâmetro informado contém na string
  print(nome.contains('d',
      1)); //true >>> verifica se o parâmetro informado contém na string com o parâmetro informado
  print(nome.indexOf(
      'riano')); //2 >>> retorna o índice onde começa o parâmetro informado
  print(nome
      .length); //7 >>> retorna a quantidade de algarismos/elementos na string. O lenght não é uma função, é um get.
  print(nome.compareTo(
      'Adriano')); //0 >>> retorna 0 se for igual e 1 se possui o parâmetro e -1 se não possuir
  print(
      ' '.isEmpty); //false >>> verifica se é uma string vazia. isEmpty é um get
  print(double.parse('12.55')); //12.55 >>> converte a string em double
  print(int.parse('12')
      is int); //true >>> conta a verificação se é inteiro, mesmo passando
  print(nome.lastIndexOf(
      'a')); //4 >>> retorna o último índice de acordo com o parâmetro informado
  print('1'.padLeft(2,
      '0')); //01 >>> insere à esquerda de acordo com o tamanho width, a string mencionada
  print('1'.padRight(6,
      '0')); //100000 >>> insere à direita de acordo com o tamanho width, a string mencionada

  String sopa = 'Sopa de letrinhas';
  int index = sopa.indexOf(' de ');
  print(
      'A sopa é ${sopa.substring(index).trim()}'); //A sopa é de letrinhas >>> interpolou na string a variável sopa
  //com o substring conta o índice de cada elemento e retorna a posição do parâmetro index que possui a string (' de ')com espaços
  //e com o uso do trim para remover os espaços do valor interpolado
  print('');

  num numero = 3.14;
  print(numero is double); //true >>> is testa se é
  print(numero is! double); //false >>> is! testa se não é
}
