import 'package:flutter/material.dart';

class ContarPerguntas extends StatelessWidget {
  final int totalPerguntas;
  final int atualPerguntas;

  ContarPerguntas(this.totalPerguntas, this.atualPerguntas);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Pergunta: " +
                atualPerguntas.toString() +
                " de " +
                totalPerguntas.toString(),
            style: TextStyle(fontSize: 28),
          ),
        ),
      ],
    );
  }
}
