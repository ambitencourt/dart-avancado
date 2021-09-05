// É uma lista dinâmica e ordenada entre chaves, onde podemos adicionar, remover, e organizar os seus elementos

void main() {
  var textos = ['Adriano', 'Bryan'];
  var numeros = [38, 11, 37];

  print(
      '${textos[0]} e ${textos[1]}'); //o índica do array é indicado entre colchetes
  print(
      '${textos[0]} tem ${numeros[0]} anos e ${textos[1]} tem ${numeros[1]} anos');

  bool verdadeiro = !false;
  var arraydinamico = ['texto', [], 3, 1.5, verdadeiro];
  print(arraydinamico);
  //alterar elementos do arraydinamico
  arraydinamico[0] = textos[0];
  arraydinamico[1] = [
    '${textos[1]}',
    'filho'
  ]; //inseriu elementos dentro do array no índice 1 que é um array
  print(arraydinamico);

  //array dinamico com funções
  arraydinamico.add(textos[1]);
  print(arraydinamico);
  arraydinamico.insert(3, 'Catiana');
  print(arraydinamico);
  arraydinamico.removeAt(2);
  print(arraydinamico);
  arraydinamico.removeRange(1, 3);
  print(arraydinamico);
  arraydinamico.remove(1.5);
  print(arraydinamico);
  arraydinamico.clear();
  print(arraydinamico.isEmpty);
  numeros.sort(); //sort coloca em ordem crescente somente
  print(numeros);
  numeros.sort((b, a) => a.compareTo(
      b)); // para colocar em ordem decrescente, é necessário aplicar uma função
  print(numeros);
  numeros.sort((a, b) => a.compareTo(b)); //coloca em ordem crescente
  print(numeros);
}
