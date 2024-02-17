import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacaoFinal;
  final void Function() quandoReiniciarQuesionario;

   const Resultado({required this.pontuacaoFinal, required this.quandoReiniciarQuesionario, super.key});

  String get fraseResultado {
    if(pontuacaoFinal < 8){
      return 'Parabens!';
    } else if(pontuacaoFinal < 12){
      return 'Você é top!!!';
    } else if(pontuacaoFinal < 16){
      return 'Impressionante!!';
    } else {return 'Nível jedi';}
  }

  @override
  Widget build(BuildContext context) {  
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
                child: Text(fraseResultado, style: TextStyle(fontSize: 36, fontWeight: FontWeight.w800),),  
              ),
              FilledButton.tonal(
                onPressed: quandoReiniciarQuesionario,
                child: const Text('reiniciar!?'),
                style: FilledButton.styleFrom(backgroundColor: Colors.blue)
              ),
              
      ],
    );

  }
}