


import 'package:flutter/material.dart';

void main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp>{
    var _pergunstasSelecionadas = 0;

    void _responder(){

        setState(() {
          _pergunstasSelecionadas++;
          print('pergunta respondida $_pergunstasSelecionadas');
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
            Text(perguntas[_pergunstasSelecionadas]),
             FilledButton(
              onPressed: _responder,
              child:  const Text('Resposta 1')), 
              FilledButton(
              onPressed: _responder,
              child: const Text('Resposta 2')),
              FilledButton(
              onPressed: _responder,
              child: const Text('Resposta 3'))
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