import 'package:ex1/conteudo.dart';
import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
  Conteudo c1;

  final arquivo = File('./dados.json');

  if (arquivo.existsSync()) {
    var dados = jsonDecode(arquivo.readAsStringSync());
    c1 = Filme(dados['titulo']);

    try {
      c1.validarClassificacao(dados['classificacao']);
    } catch (error) {
      print(error);
    }
  }
}
