


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


    final  perguntas = [
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

      List<String> respostas = perguntas[_pergunstasSelecionadas].cast()['respostas'];

      // for(String textoResp in respostas){
      //   widget.add(Respostabutton(textoResp, _responder));
      // }



    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
        ),
        body: Column(
          children: <Widget> [
            Questao(perguntas[_pergunstasSelecionadas]['texto'].toString()),
             ...respostas.map((t)=> Respostabutton(t, _responder)).toList(),
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