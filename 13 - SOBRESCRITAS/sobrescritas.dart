/* Métodos (override/sobreposição != overload/sobrecarga)
- Override: Temos sobrescrita dos métodos da classe pai na classe herdeira

* Construtores
- Super se refere ao construtor da classe herdeira

* Classes abstratas
- Não podem ser instanciadas, servem como modelo
- Métodos sem escopo devem ser sobrescritos em classes herdeiras
*/

import 'cao.dart';

void main() {
  var cao = Cao.domestico('Pissute', 'Pincher', 'Masculino');
  print(
    'nome: ${cao.nome}\n raça: ${cao.raca}\n sexo: ${cao.sexo}\n idade: ${cao.idade}\n docil: ${cao.docil}\n',
  );
  print(
      'Desenvolvimento: ${cao.desenvolvimento} \n tipo: ${cao.coluna! ? 'Vertebrado' : 'Invertebrado'}');
  cao
    ..dormir()
    ..alimentar();
}
