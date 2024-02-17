import 'package:flutter/material.dart';
import 'package:projeto_flutter/questionario.dart';
import 'package:projeto_flutter/resultado.dart';

void main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  int _pergunstasSelecionadas = 0;
  int _pontuacaoTotal = 0;

  final _perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto','pontuacao':10},
        {'texto': 'Vermelho','pontuacao':5},
        {'texto': 'Verde','pontuacao':3},
        {'texto': 'Branco','pontuacao':1},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto':'Coelho','pontuacao':10},
        {'texto':'Cobra','pontuacao':5},
        {'texto':'Elefante','pontuacao':3},
        {'texto':'Leão','pontuacao':1},
      ]
    },
    {
      'texto': 'Qual seu instrutor favorito?',
      'respostas': [
        {'texto':'Maria','pontuacao':10},
        {'texto':'Joana','pontuacao':5},
        {'texto':'Leo','pontuacao':3},
        {'texto':'Pedro','pontuacao':1},
      ]
    }
  ];

  void _responder(int pontuacao) {
    setState(() {
      _pergunstasSelecionadas++;
      _pontuacaoTotal += pontuacao; 
    });

    print(_pontuacaoTotal);
  }

  void _reiniciarQuesionario(){
    setState(() {
      _pergunstasSelecionadas = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _pergunstasSelecionadas < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String,Object >> respostas = temPerguntaSelecionada
        ? _perguntas[_pergunstasSelecionadas].cast()['respostas']
        : [];
    // for(String textoResp in respostas){
    //   widget.add(Respostabutton(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Perguntas"),
            backgroundColor: Colors.blue,
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  pergunstasSelecionadas: _pergunstasSelecionadas,
                  respostas: respostas,
                  responder: _responder)
              : Resultado(pontuacaoFinal: _pontuacaoTotal, quandoReiniciarQuesionario: _reiniciarQuesionario )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
