//?Paradigmas de programação
//Um paradigma pode ser entendido como um tipo de estruturação ao qual a linguagem deverá respeitar
//Um paradigma pode oferecer técnicas apropriadas para uma aplicação específica
//Dart hoje pode ser considerada uma linguagem multi-paradigma, embora a linguagem apresente fortes estruturas típicas de linguagens orientadas a objeto.

//?Principais paradigmas:
//*Paradigma imperativo(paradigma procedural): As instruções devem ser passadas ao computador na sequência em que devem ser executadas

//*Paradigma declarativo: Como a programação declarativa é baseada em dados imutáveis, ela expressa a lógica de uma computação sem descrever 
//exatamente seu fluxo de controle. Dentro do paradigma declarativo, podemos identificar outros paradigmas, como o funcional , o lógico e a programação restritiva.

//*Paradigma funcional: No paradigma de programação funcional, o uso de funções é destaque (daí seu nome). O problema é dividido em blocos e, para sua resolução,
//são implementadas funções que definem variáveis em seu escopo e retornam algum resultado. É bastante indicado quando a solução requerida é fortemente dependente de uma base matemática.

//*Paradigma lógico: Deriva do declarativo. Fundamentalmente, utiliza formas de lógica simbólica como padrões de entrada e saída. A partir daí, realiza inferências para produzir os resultados.
//São utilizadas na solução de problemas que envolvem inteligência artificial, criação de programas especialistas e comprovação de teoremas.

//*Paradigma orientado a objetos: Todos os objetos têm determinados estados e comportamentos. Esses estados são descritos pelas classes como atributos. 
//Já a forma como eles se comportam (sua funcionalidade) é definida por meio de métodos, que são equivalentes às funções do paradigma funcional.
//São 4 pilares, que são conceito de abastração, herança, polimorfismo e encapsulamento.
//Abastração: É a representação de um objeto real. São três pontos que devem ser levados em consideração nessa abstração:
//O primeiro ponto é darmos uma identidade ao objeto que iremos criar;
//A segunda parte diz respeito a características do objeto;
//A terceira parte é definirmos as ações que o objeto irá executar;
//Herança: É o reuso de código, onde um objeto herda características de outro objeto, bastando extendê-las;
//Polimorfismo: Consiste na alteração do funcionamento interno de um método herdado de um objeto pai, ou seja, usar a mesma forma em objetos diferentes;
//Encapsulamento: Usado para proteger os atributos e variáveis. Ex: getters, setters e _(privado)

//*Paradigma orientado a eventos: A execução do programa se dá a medida que determinados eventos são disparados pelo usuário. É usado por toda linguagem de programação que tem uso de recursos gráficos, como jogos e formulários.

//*Paradigma modular: É uma forma de programação no qual o desenvolvimento das rotinas de programação é feito através de módulos, que são interligados entre si através de uma interface comum.

//*Paradigma estruturado: É uma forma de programação de computadores que preconiza que todos os programas possíveis podem ser reduzidos a apenas três estruturas: sequência, decisão e repetição.

//*Paradigma linear: É a otimização nos quais a função objetivo e as restrições são todas lineares(definidas em linha a linha);

//*Paradigma linear modular: É a junção da modular e liner, estruturada em linhas e executando os módulos componentizados;


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

//Funções dentro de classes são chamadas de métodos.

//Se for tipar variáveis de mesmo tipo, pode-se utilizar a inferência inline, Ex: String? user, nome, senha, cargo;