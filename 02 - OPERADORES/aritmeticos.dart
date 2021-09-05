//+(soma), -(subtração), *(multiplicação), /(divisão), ~/(com resultado inteiro), %(resto)
//Incremento>>> +=(incrementa o valor que atrelar após o =), ++(incrementa a mais de um em um)
//Decremento>>> -=(decrementa o valor que atrelar após o =), --(decrementa a menos de um em um)
//Assignação>>> =(atribui), ??
void main() {
  var a, b, c, d, e, f;
  a = 3;
  b = ++a;
  c = ++a / --b;
  d = a ~/ b;
  e = 1;
  f = e;
  f = null;
  f ??=
      ++e; //o operador ??= verifica se o valor à esquerda é nulo e aplica o valor da direita
  print(a);
  print(b);
  print(c);
  print(d);
  print('e: $e, f: $f');
}
