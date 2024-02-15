import 'package:flutter/material.dart';
import 'package:projeto_flutter/questao.dart';

import 'resposta_button.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int pergunstasSelecionadas;
  final respostas;
  final void Function() responder;

  const Questionario({
    required this.perguntas,
    required this.pergunstasSelecionadas,
    required this.respostas,
    required this.responder,
    super.key, 
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column (
          children: <Widget> [
            Questao(perguntas[pergunstasSelecionadas]['texto'].toString()),
             ...respostas.map((t)=> Respostabutton(t,responder)).toList(),
             ]
          ),
    );
  }
}