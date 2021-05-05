import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  Resultado(this.pontuacao);

  String get fraseResultado {
    if (pontuacao <= 8) {
      return 'Foi bem ruimzinho!';
    } else if (pontuacao > 8 && pontuacao <= 15) {
      return 'Até que tu foste bem. Parabens!';
    } else {
      return 'Tu é pica irmão! foda';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
