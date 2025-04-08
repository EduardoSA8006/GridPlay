import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_play/tabuleiro.dart';

class GameLocalPage extends StatefulWidget {
  final  jogadores;

   GameLocalPage({super.key, required this.jogadores});

  @override
  State<GameLocalPage> createState() => _GameLocalPageState();
}

class _GameLocalPageState extends State<GameLocalPage> {
  void atualizarTela() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 14, 100),
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text("Sair"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 60),
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 28, 14, 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment(0, -2),
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 25, 14, 81),
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 141, 149, 207)),
                          borderRadius: BorderRadius.circular(14)),
                      width: 160,
                      height: 115,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Eduardo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.close_rounded,
                            color: Colors.red,
                            size: 45,
                          )
                        ],
                      ),
                    ),
                    ClipOval(
                      child: Container(
                          width: 60,
                          height: 60,
                          color: Color.fromARGB(255, 55, 35, 156),
                          child: Icon(
                            Icons.person,
                            color: Colors.white70,
                          )),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  alignment: Alignment(0, -2),
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 25, 14, 81),
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 141, 149, 207)),
                          borderRadius: BorderRadius.circular(14)),
                      width: 160,
                      height: 115,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Helio",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.circle_outlined,
                            color: Colors.green,
                            size: 45,
                          )
                        ],
                      ),
                    ),
                    ClipOval(
                      child: Container(
                          width: 60,
                          height: 60,
                          color: Color.fromARGB(255, 55, 35, 156),
                          child: Icon(
                            Icons.person,
                            color: Colors.white70,
                          )),
                    )
                  ],
                )
              ],
            ),
            (vencedor.isEmpty)
                ? Column(
                    children: [
                      Text(
                        "Vez de:",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      (vezDe == "X")
                          ? Icon(
                              Icons.close_rounded,
                              color: Colors.red,
                              size: 65,
                            )
                          : Icon(
                              Icons.circle_outlined,
                              color: Colors.green,
                              size: 70,
                            )
                    ],
                  )
                : Text(
                    "Hélio venceu o jogo!",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width - 40,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 47, 27, 145),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: CupertinoButton(
                            child: icones([0, 0]) ?? Text(""),
                            onPressed: () {
                              adicionarJogada(0, 0);
                              atualizarTela();
                            }),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 28, 13, 104),
                            borderRadius: BorderRadius.circular(14)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 28, 13, 104),
                              borderRadius: BorderRadius.circular(14)),
                          child: CupertinoButton(
                              onPressed: () {
                                adicionarJogada(0, 1);
                                atualizarTela();
                              },
                              child: icones([0, 1]) ?? Text(""))),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        child: CupertinoButton(
                          onPressed: () {
                            adicionarJogada(0, 2);
                            atualizarTela();
                          },
                          child: icones([0, 2]) ?? Text(""),
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 28, 13, 104),
                            borderRadius: BorderRadius.circular(14)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: CupertinoButton(
                          onPressed: () {
                            adicionarJogada(1, 0);
                            atualizarTela();
                          },
                          child: icones([1, 0]) ?? Text(""),
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 28, 13, 104),
                            borderRadius: BorderRadius.circular(14)),
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: CupertinoButton(
                          onPressed: () {
                            adicionarJogada(1, 1);
                            atualizarTela();
                          },
                          child: icones([1, 1]) ?? Text(""),
                        ),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 28, 13, 104),
                            borderRadius: BorderRadius.circular(14)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: CupertinoButton(
                          onPressed: () {
                            adicionarJogada(1, 2);
                            atualizarTela();
                          },
                          child: icones([1, 2]) ?? Text(""),
                        ),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 28, 13, 104),
                            borderRadius: BorderRadius.circular(14)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: CupertinoButton(
                          onPressed: () {
                            adicionarJogada(2, 0);
                            atualizarTela();
                          },
                          child: icones([2, 0]) ?? Text(""),
                        ),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 28, 13, 104),
                            borderRadius: BorderRadius.circular(14)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: CupertinoButton(
                          onPressed: () {
                            adicionarJogada(2, 1);
                            atualizarTela();
                          },
                          child: icones([2, 1]) ?? Text(""),
                        ),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 28, 13, 104),
                            borderRadius: BorderRadius.circular(14)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: CupertinoButton(
                          onPressed: () {
                            adicionarJogada(2, 2);
                            atualizarTela();
                          },
                          child: icones([2, 2]) ?? Text(""),
                        ),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 28, 13, 104),
                            borderRadius: BorderRadius.circular(14)),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
