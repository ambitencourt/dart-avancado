void main() {
  num idade = 11;
  if (idade <= 21 && idade >= 18) {
    print('Maior de Idade');
  } else if (idade <= 17 && idade >= 13) {
    print('Adolescente');
  } else {
    print('Criança');
  }

//Usando ternário
  idade = 17;
  print((idade <= 21 && idade >= 18)
      ? 'Maior de Idade'
      : (idade <= 17 && idade >= 13)
          ? 'Adolescente'
          : 'Criança');

  int ano = 1984;
  print(
      'Ano: $ano ${(ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0) ? 'é bissexto' : 'não é bissexto'}');
}
