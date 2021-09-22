class Calculos {
  double pi = 3.14;
  static double piEstatico =
      3.14; //Variáveis estáticas podem ser acessadas sem precisar instanciar classes/objetos
  double areaCirculo(double raio) {
    return pi * (raio * raio);
  }

  static double areaCirculoEstatico(double raio) {
    return piEstatico * (raio * raio);
  }
}
