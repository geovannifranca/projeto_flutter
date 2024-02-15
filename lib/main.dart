


import 'package:flutter/material.dart';
import 'package:projeto_flutter/questionario.dart';
import 'package:projeto_flutter/resultado.dart';

void main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp>{
    int _pergunstasSelecionadas = 0;

    final _perguntas = const [
      {
        'texto':'Qual é a sua cor favorita?',
        'respostas':['Preto','Vermelho','Verde','Branco']
      },{
        'texto':'Qual é o seu animal favorito?',
        'respostas':['Coelho','Cobra','Elefante','Leão']
      },{
        'texto':'Qual seu instrutor favorito?',
        'respostas':['Maria','Joana','Leo','Pedro ']
      }];

    void _responder(){

        setState(() {
          _pergunstasSelecionadas++;
        });
        
      print(_pergunstasSelecionadas);
    }

  bool get temPerguntaSelecionada {
    return _pergunstasSelecionadas < _perguntas.length;

  }

    @override
  Widget build(BuildContext context){

      List<String> respostas = temPerguntaSelecionada ? _perguntas[_pergunstasSelecionadas].cast()['respostas']:[];
      // for(String textoResp in respostas){
      //   widget.add(Respostabutton(textoResp, _responder));
      // }



    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
        ),
        body: temPerguntaSelecionada ? 
        Questionario(perguntas: _perguntas, pergunstasSelecionadas: _pergunstasSelecionadas, respostas: respostas, responder: _responder)
        : Resultado()
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