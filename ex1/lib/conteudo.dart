abstract class Conteudo {
  String titulo = "";
  int _classificacao = 0;

  Conteudo(this.titulo);

  int get classificacaoIndicativa => _classificacao;

  void validarClassificacao(int classificacao) {
    if (classificacao < 0 || classificacao > 18) {
      throw Exception("Classificação Inválida");
    }
    _classificacao = classificacao;
  }

  void darPlay();

  Map<String, dynamic> toJson();
}

class Filme extends Conteudo {
  Filme(super.titulo);

  @override
  void darPlay() {
    print("Reproduzindo o filme $titulo");
  }

  @override
  Map<String, dynamic> toJson() {
    return {'titulo': titulo, 'classificacao': classificacaoIndicativa};
  }
}

class Serie extends Conteudo {
  int temporadas = 0;

  Serie(this.temporadas, super.titulo);

  @override
  void darPlay() {
    print("Iniciando a série $titulo com $temporadas temporadas");
  }

  @override
  Map<String, dynamic> toJson() {
    return {'titulo': titulo, 'classificacao': classificacaoIndicativa};
  }
}
