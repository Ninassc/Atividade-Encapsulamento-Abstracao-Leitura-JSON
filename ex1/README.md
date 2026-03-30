PARTE 1: PESQUISA TEÓRICA

1) O _ no Dart serve pra deixar uma variável privada dentro do arquivo. Ou seja, ela só pode ser acessada ali dentro e não por outros arquivos.

2) A diferença principal é no controle e segurança. Quando é direto a variável úblic pode ser lida e modificada por qualquer um. Quando é get, a variável privada só pode ter o seu valor acessado, mas não modificado

3) O setter, ao invés de permitir que o código externo altere diretamente o valor de um atributo, ele atua como um "porteiro", garantindo que apenas dados válidos sejam atribuídos, protegendo a integridade do objeto

4) Resulta em um erro de compilação. Atributos privados no Dart são restritos ao arquivo, impedindo acesso direto, leitura ou escrita, por classes em outros arquivos

5) A classe abstrata serve como apenas um modelo para outras classes, definindo as regras, mas não todos os comportamentos necessários para de fato rodar

6) O @override sobrescreve o método da classe abstrata. Seu uso é obrigatório quando as classes filhas precisam também do método e retornam valores diferentes (polimorfismo)

7) A função jsonDecode da biblioteca dart:convert é importante na leitura de arquivos, pois ela transforma uma string JSON do arquivo em estruturas de dados manipuláveis (como Map ou List)


PARTE 4: RELATÓRIO FINAL

1) Exception: Classificação Inválida

2) O encapsulamento fez com que a variável classificacao não fosse alterada em outro arquivo

3) Se o arquivo dados.json estiver vazio, o jsonDecode não vai conseguir interpretar nada e vai gerar um erro, porque uma string vazia não é um JSON válido. Ele espera pelo menos um {} ou [], então quando não tem conteúdo, ocorre uma exceção de leitura.

4) Definir o método darPlay() como abstrato na classe pai garante que todas as classes filhas sejam obrigadas a implementar esse método, mantendo um padrão entre elas.

5) A maior dificuldade foi entender como transformar os dados do JSON em objetos no código


PARTE 1: PESQUISA TEÓRICA 

1) Adicionamos um colchete no início e no final do arquivo JSON para que ele seja interpretado como uma lista de objetos

2) Quando tipamos a variável como List<Map<String, dynamic>> o dart entende que a variável é uma lista que contém mapas com chaves do tipo string e valores do tipo dynamic. A lista é a estrutura que vai guardar os objetos e o Map é a estrutura que vai guardar os dados de cada objeto

3) O laço for tradiicional é usado quando há uma ideia do número de elementos para pecorrer, enquanto o for-in pode ser usado para pecorrer um número de elementos indefinido, além de ser mais organizado

4) A List<Conteudo> pode aceitar objetos tanto do tipo Filme quanto do tipo Serie, pois ela é uma classe abstrata pai e essas outras classes herdam ela, ou seja, são filhas dela 

5) o .map() pecorre cada elemento de catalogo e aplica a função que está dentro dele, no caso, a função toJson(), que transforma cada objeto em um mapa, e depois transforma tudo em uma lista


PARTE 4: RELATÓRIO FINAL

1) Após executar o programa, o arquivo dados.json foi atualizado e permanceu da forma definida, com os dados que foram adicionados

2) Daria erro, pois Serie precisa também de temporadas para ser instanciada

3) O maior benefício de ter criado o método toJson() dentro das classes filhas, em vez de tentar montar o Map manualmente direto no main.dart é que o código fica mais organizado e fácil de entender, além de evitar erros

4) Sim, continuou protegendo o sistema de dados negativos e foi usado o try catch para capturar o erro

5) O mais difícil foi entender a estrutura do SalvarCatalogo