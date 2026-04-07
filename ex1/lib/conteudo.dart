abstract class Conteudo {
  String titulo = "";
  int id = 0;
  int _classificacao = 0;

  List<double> _avaliacoes = [];

  List<double> get avaliacoes => _avaliacoes;

  Conteudo(this.titulo, this.id);

  int get classificacaoIndicativa => _classificacao;

  void validarClassificacao(int classificacao) {
    if (classificacao < 0 || classificacao > 18) {
      throw Exception("Classificação Inválida");
    }
    _classificacao = classificacao;
  }

  double soma = 0;

  double get notaMedia {
    if (_avaliacoes.isEmpty) {
      return 0.0;
    }

    for (var i in _avaliacoes) {
      soma += i;
    }

    return soma / _avaliacoes.length;
  }

  void avaliar(double nota) {
    if (nota < 1.0 && nota > 5.0) {
      throw Exception("Nota inválida! Use valores entre 1 e 5.");
    }

    _avaliacoes.add(nota);
  }

  String get estrelas {
    notaMedia.round();

    return "⭐" * 3;
  }

  void darPlay();

  Map<String, dynamic> toJson();
}

class Filme extends Conteudo {
  Filme(super.titulo, super.id, List<double>avaliacoes) {
    _avaliacoes = avaliacoes;
  }

  @override
  void darPlay() {
    print("Reproduzindo o filme $titulo");
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      'titulo': titulo,
      'classificacao': classificacaoIndicativa,
      "avaliacoes" : avaliacoes
    };
  }
}

class Serie extends Conteudo {
  int temporadas = 0;

  Serie(this.temporadas, super.titulo, super.id);

  @override
  void darPlay() {
    print("Iniciando a série $titulo com $temporadas temporadas");
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      'titulo': titulo,
      'classificacao': classificacaoIndicativa,
      'temporadas': temporadas,
      "avaliacoes" : avaliacoes
    };
  }
}
