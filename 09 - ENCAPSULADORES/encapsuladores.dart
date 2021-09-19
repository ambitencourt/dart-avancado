import 'Conta.dart';
import 'Usuario.dart';

///
/// São usados para proteger os atributos e variáveis
/// Get é usado para acessar e o Set é usado para alterar
/// Atributos ou variáveis com underline são privados Ex: _saldo

void main() {
  Usuario usuario = Usuario('Adriano', 'abc123');
  usuario
    ..senha = '123abc' //Primeira tentativa de alteração falhou
    ..alteracao = true //modificado o valor de alteração
    ..senha =
        '123abc'; //agora que a condição foi preenchida, o set alterou o valor
  //ao informar um valor, está usando o set
  print(usuario.senha); //ao chamar o atributo está usando o get
  var conta = Conta('Bryan Vitor');
  conta
    ..deposito = 900
    ..deposito = 450
    ..saque = 550
    ..saque = 500;
  print('');

  conta
    ..limite = 700
    ..alterarLimite = true
    ..limite = 1000
    ..alterarLimite = false;
  print('');

  conta
    ..saque = 950
    ..saque = 850;

  print('${conta.informacao}\n');

  Conta contaVip = Conta.vip('Adriano Bitencourt', limite: 12500);
  contaVip
    ..deposito = 15000
    ..saque = 15000
    ..limite = 15000
    ..saque =
        15000; //não precisa setar, pois o parâmetro nomeado já foi inputado
  print('${contaVip.informacao}\n');
}

class encapsular {
  //para encapsular basta selecionar o campo e clicar na lâmpada e escolher encapsular campo
  String? _nome;

  String? get nome => _nome;

  set nome(String? nome) {
    _nome = nome;
  }
}
