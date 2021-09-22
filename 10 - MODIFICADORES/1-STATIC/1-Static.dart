import '2-Calculos.dart';

///
/// A variável estática fica disponível na própria classe em vez de suas instâncias/objetos
/// Em métodos estáticos deve usar variáveis estáticas da classe
///

void main() {
  double raio = 5;
  var calculos1 = Calculos();
  print(calculos1.pi);
  print(
      Calculos.piEstatico); //Não precisou instanciar a classe, já chamou direto
  print(calculos1.areaCirculo(raio));

  Calculos calculos2 = Calculos();
  print(calculos2.pi);
  print(calculos2.areaCirculo(raio));
  print(
      'Instâncias consomem ${identical(calculos1, calculos2) ? "MENOS" : "MAIS"} memória!');

  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (raio * raio));
  print(
      'Retornos iguais ${Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'SIM' : 'NÃO'} métodos diferentes');
  //Calculos.areaCirculoEstatico(raio) não precisa instanciar
  //Calculos().areaCirculo(raio) quando chama a classe com parêntes está chamando um método instanciado
}
