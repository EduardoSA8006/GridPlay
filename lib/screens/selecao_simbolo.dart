import 'package:flutter/material.dart';

class SelecaoSimboloPage extends StatefulWidget {
  const SelecaoSimboloPage({super.key});

  @override
  State<SelecaoSimboloPage> createState() => _SelecaoSimboloPageState();
}

class _SelecaoSimboloPageState extends State<SelecaoSimboloPage> {
  String jogador1 = "Jogador 1";
  String jogador2 = "Jogador 2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromARGB(255, 34, 20, 138),
      child: Column(
        children: [
          Text(
            jogador1,
            style: TextStyle(fontSize: 23),
          )
        ],
      ),
    ));
  }
}
