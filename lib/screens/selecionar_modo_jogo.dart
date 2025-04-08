import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_play/screens/selecao_simbolo.dart';

class SelecionarModoJogo extends StatelessWidget {
  const SelecionarModoJogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 20, 138),
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text("GridPlay"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "GridPlay",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(colors: [
                      Colors.red,
                      Colors.purple,
                      Colors.purpleAccent
                    ])),
                child: CupertinoButton(
                    child: Text(
                      "Single Player",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelecaoSimboloPage()));
                    })),
            SizedBox(
              height: 15,
            ),
            Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(colors: [
                      Colors.red,
                      const Color.fromARGB(255, 230, 141, 7),
                      Colors.deepOrange
                    ])),
                child: CupertinoButton(
                    child: Text(
                      "Multiplayer",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                    onPressed: () {})),
            SizedBox(
              height: 15,
            ),
            Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(colors: [
                      Colors.greenAccent,
                      Colors.green,
                      Colors.blue
                    ])),
                child: CupertinoButton(
                    child: Text(
                      "Local Multiplayer",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                    onPressed: () {})),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
