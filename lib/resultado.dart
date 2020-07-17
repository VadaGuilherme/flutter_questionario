import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  Resultado(this.pontuacao);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabens! Sua pontuacao foi ' + this.pontuacao.toString();
    } else if (pontuacao < 12) {
      return 'Voce eh bom! Sua pontuacao foi ' + this.pontuacao.toString();
    } else if (pontuacao < 16) {
      return 'Impressionante! Sua pontuacao foi ' + this.pontuacao.toString();
    } else {
      return 'Nivel Jedi! Sua pontuacao foi ' + this.pontuacao.toString();
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
