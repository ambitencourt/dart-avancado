funcaoAnonima() {
  //Nesse caso a função funcaoAnonima é nomeada
  print(''' 
 SINTAXE:

 (){
   print('FUNÇÃO ANÔNIMA')
 }

 () => print('FUNÇÃO ANÔNIMA COM ARROW FUNCTION')
 ''');

  //Função anônima com variável
  var variavelAnonima = () => print('Variável Anônima');
  variavelAnonima(); //Para executar basta chamar a variável como se fosse uma função
  var variavelAnonimaParametros = (String msg) => print(
      'variavelAnonima: $msg'); //foi utilizado o parâmetro msg interpolando a uma string
  variavelAnonimaParametros('Com parâmetro');
}

void main() {
  funcaoAnonima();
}
