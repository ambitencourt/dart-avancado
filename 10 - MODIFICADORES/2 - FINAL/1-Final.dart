import '2-Pessoa.dart';

///
/// Inicializada apenas quando acessada em tempo de execução, deve ser declarada
/// Em coleções final, nem todo o conteúdo será final
///

void main() {
  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo; //v = g * t
  print('Velocidade máxima: $velocidade m/s');
  for (int i = 1; i <= 3; i++) {
    final indice = i;
    print('Contagem: $indice');
  }
  var pessoa = Pessoa('Adriano', ['Bryan', 'Catiana']);
  pessoa.nome = 'Adriano Bitencourt';
  //pessoa.familiares = []; depois que se define final, não se pode alterar
  print('nome: ${pessoa.nome} familiares: ${pessoa.familiares}');
}
