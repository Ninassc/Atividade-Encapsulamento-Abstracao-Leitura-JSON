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
