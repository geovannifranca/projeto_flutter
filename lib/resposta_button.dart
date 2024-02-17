import 'package:flutter/material.dart';

class Respostabutton extends StatelessWidget {
  final String textoButton;
  final void Function() onSelect;
  
  const Respostabutton(this.textoButton, this.onSelect, {super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: double.infinity,
      margin: const EdgeInsets.all(1),
      child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(158, 0, 153, 255)),
                ),   
                onPressed: onSelect,
                child:  Text(textoButton,style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              ),
    );
  }

  toList() {}
}