import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntasSelecionadas;
  final void Function(int) quandoResponder;

  const Questionario({
    @required this.perguntas,
    @required this.perguntasSelecionadas,
    @required this.quandoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntasSelecionadas < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntasSelecionadas]['resposta']
        : null;

    return Column(
      children: [
        Questao(perguntas[perguntasSelecionadas]['texto']),
        ...respostas.map((resp) {
          return Resposta(
            resp['texto'],
            () => quandoResponder(resp['pontuacao']),
          );
        }).toList(),
      ],
    );
  }
}
