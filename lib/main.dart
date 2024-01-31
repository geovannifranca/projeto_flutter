


import 'package:flutter/material.dart';
import 'package:projeto_flutter/questao.dart';
import 'package:projeto_flutter/resposta_button.dart';

void main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp>{
    int _pergunstasSelecionadas = 0;

    void _responder(){

        setState(() {
          _pergunstasSelecionadas++;
        });
        
      
    }

    @override
  Widget build(BuildContext context){


    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
        ),
        body: Column(
          children: <Widget> [
            Questao(perguntas[_pergunstasSelecionadas]),
             Respostabutton('Respota 1',_responder),
             Respostabutton('Respota 1',_responder),
             Respostabutton('Respota 1',_responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp  extends StatefulWidget{
  const PerguntaApp({super.key});
  
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }


  
}