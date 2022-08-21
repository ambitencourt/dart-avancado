//com o substring conta o índice de cada elemento e retorna a posição do parâmetro index que possui a string (' de ')com espaços
//e com o uso do trim para remover os espaços do valor interpolado

// var nome = 'Adriano';
// print('Meu nome é = ${nome}'); //Quando se trata de operação, é necessário o uso de chaves para interpolação
// É importante identificar a variável, pois o DART testa cada variável não declarada para saber de qual se trata, e se já identificar, otimiza o código.
// Variáveis do tipo var, não podem ser alteradas no tipo após atribuição da mesma:
// Ex: var numero = 3;
// Utilize const para iniciar em tempo de compilação, iniciando com prioridade
// numero = 'três'; //Nesse caso não pode alterar para string, pois o valor atribuído anteriormente foi um inteiro, então só pode alterar para outro inteiro
// Obs: No caso de variável do tipo dynamic, esse problema não ocorre, pode alterar para qualquer tipo e valor.

// Num(int, double), String, bool, dynamic (num pode ser esses tipos como principal int e double)

//+(soma), -(subtração), *(multiplicação), /(divisão), ~/(com resultado inteiro), %(resto)
//Incremento>>> +=(incrementa o valor que atrelar após o =), ++(incrementa a mais de um em um)
//Decremento>>> -=(decrementa o valor que atrelar após o =), --(decrementa a menos de um em um)
//Assignação>>> =(atribui), ??

//o operador ??= verifica se o valor à esquerda é nulo e aplica o valor da direita
// &&(e), ||(ou), !(negação)
//==(igual), !=(diferente), >(maior), >=(maior ou igual), <(menor), <=(menor ou igual)

//No DART não precisa informar o void

//Comentários com 3 barras transforma-se em legendas para a função seguinte e basta
//um enter para adicionar automaticamente mais 3 barras

// Utiliza-se ''' texto ''' (3 aspas simples) para escrever um texto grande, tudo que estiver entre as 6 aspas, será String) 

//Para não precisar utilizar o null safety, é necessário iniciar a variável

//A operação em cascata .. é uma maneira simples de alterar as propriedades de um objeto, geralmente ao criá-lo, 
//em vez de obter uma referência para o objeto e alterar as propriedades uma a uma. 

//O operador spread ... adiciona elementos às coleções

//Parâmetro nomeados tornam os parâmetros como opcionais. Para tornar opcionais, basta inserir {} entre os parâmetros

//Sempre defina minis escopos para cada função, assim fica fácil criar uma solução ou corrigir um erro diretamente.

//Tipos primitivos: String, int, double, bool
//Outros tipos: var, dynamic, List, Map, Set(conjuntos), Runes(caracteres), Symbol, Null

//Modificadores de Imutabilidade? const(torna um objeto constante, que não possa alterar o seu estado/alterado) e 
//final(Poderá ser inicializado apenas uma vez, uma vez atribuído o valor, não poderá ser alterado)
//Modificador static(Não dependem de uma instância em memória para serem acessados, pois são inicializados durante a execução do app)

//Você pode inferir a tipagem de uma variável bastando informar apenas o var ou um final por exemplo, o Dart atribuirá de acordo com o valor informado