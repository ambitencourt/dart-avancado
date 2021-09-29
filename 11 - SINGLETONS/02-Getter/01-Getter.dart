//A instância privada é acessada através do Get

import '02-PessoaGetter.dart';

void main() {
  print(PessoaGetter.instancia
      .nome); //O Singleton está configurado, faltando o valor logo abaixo, por enquanto o valor é null
  PessoaGetter.instancia.nome = 'Adriano Bitencourt';
  print(PessoaGetter
      .instancia.nome); //Após atribuir o valor, podemos chamar o singleton
}
