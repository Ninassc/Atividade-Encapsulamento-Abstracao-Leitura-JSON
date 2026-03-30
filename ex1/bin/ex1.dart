import 'package:ex1/conteudo.dart';
import 'dart:io';
import 'dart:convert';

void salvarCatalogo(List<Conteudo> catalogo) {
  final arquivo = File('./dados.json');

  List<Map<String, dynamic>> listaSalvar =
      catalogo.map((dados) => dados.toJson()).toList();
  arquivo.writeAsStringSync(jsonEncode(listaSalvar));
}

void mostrarCatalogo(List<Conteudo> catalogo) {
  for (var dado in catalogo) {
    print("\n");
    print("ID: ${dado.id}");
    print("Título: ${dado.titulo}");
    print("Classificação: ${dado.classificacaoIndicativa}");
  }
}

void main(List<String> arguments) {
  List<Conteudo> catalogo = [];

  final arquivo = File('./dados.json');

  if (arquivo.existsSync()) {
    List<dynamic> dados = jsonDecode(arquivo.readAsStringSync());

    for (var item in dados) {
      Conteudo c1;
      c1 = Filme(item['titulo'], item['id']);
      try {
        c1.validarClassificacao(item['classificacao']);
        catalogo.add(c1);
      } catch (error) {
        print(error);
      }
    }
  }

  stdout.write("[1] para ADICIONAR\n[2] para DELETAR: ");
  String opcao = stdin.readLineSync()!;

  switch (opcao) {
    case "1":
      stdout.write("ID: ");
      int id = int.parse(stdin.readLineSync()!);

      stdout.write("Título: ");
      String titulo = stdin.readLineSync()!;

      stdout.write("Classificação: ");
      int classificacao = int.parse(stdin.readLineSync()!);

      for (var dado in catalogo) {
        if (id == dado.id) {
          throw Exception("Erro: ID já cadastrado no sistema!");
        }
      }

      Conteudo f1 = Filme(titulo, id);
      catalogo.add(f1);
      try {
        f1.validarClassificacao(classificacao);
      } catch (error) {
        print(error);
      }

    case "2":
      stdout.write("ID para exclusão: ");
      int id = int.parse(stdin.readLineSync()!);

      catalogo.removeWhere((filme) => filme.id == id);
  }

  salvarCatalogo(catalogo);

  mostrarCatalogo(catalogo);
}
