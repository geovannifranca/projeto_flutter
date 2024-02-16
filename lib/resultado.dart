import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacaoFinal;

   const Resultado({required this.pontuacaoFinal, super.key});

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
    return Container(
      child: Center(
            child: Text(fraseResultado, style: TextStyle(fontSize: 36, fontWeight: FontWeight.w800),),  
          ),
    );
  }
}