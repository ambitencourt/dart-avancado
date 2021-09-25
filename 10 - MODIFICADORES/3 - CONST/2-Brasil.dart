class Brasil {
  //Tornar a classe imutável em tempo de execução
  final double? latitude; //final para criar em tempo de execução
  final double? longitude;
  static const String capital = "Brasilia";
  static const estados = ['SP', 'RJ', 'MG', '...'];

  const Brasil(this.latitude,
      this.longitude); //Somente os atributos latitude e logintude serão definidos ao instanciar a classe
}
