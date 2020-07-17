import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual eh a sua cor favorita ?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 0},
        {'texto': 'Verde', 'pontuacao': 0},
        {'texto': 'Branco', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Qual eh o seu animal favorito ?',
      'respostas': [
        {'texto': 'Cachorro', 'pontuacao': 10},
        {'texto': 'Gato', 'pontuacao': 0},
        {'texto': 'Tartaruga', 'pontuacao': 0},
        {'texto': 'Coelho', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Qual seu irmao favorito ?',
      'respostas': [
        {'texto': 'Maria', 'pontuacao': 10},
        {'texto': 'Joao', 'pontuacao': 0},
        {'texto': 'Andre', 'pontuacao': 0},
        {'texto': 'Leo', 'pontuacao': 0},
      ],
    }
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  quandoResponder: _responder,
                )
              : Resultado(
                  _pontuacaoTotal,
                  _reiniciarQuestionario,
                )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
