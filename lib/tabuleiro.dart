import 'package:flutter/material.dart';

String vencedor = "";

List<List<String>> tabuleiro = [
  ["", "", ""],
  ["", "", ""],
  ["", "", ""],
];

bool listaContem(List<List<int>> listaPrincipal, List<int> listaAlvo) {
  return listaPrincipal.any(
      (element) => element[0] == listaAlvo[0] && element[1] == listaAlvo[1]);
}

List<Color> outrosIcones = [Colors.red, Colors.green];

List<List<int>>? vencedoresPosition;

Icon? icones(List<int> posicao) {
  if (tabuleiro[posicao[0]][posicao[1]].isEmpty) {
    return null;
  }

  bool isVencedor =
      vencedoresPosition != null && listaContem(vencedoresPosition!, posicao);

  if (tabuleiro[posicao[0]][posicao[1]] == "X") {
    return Icon(
      Icons.close_rounded,
      color: (isVencedor) ? Colors.red : outrosIcones[0],
      size: 70,
    );
  } else if (tabuleiro[posicao[0]][posicao[1]] == "O") {
    return Icon(
      Icons.circle_outlined,
      color: (isVencedor) ? Colors.green : outrosIcones[1],
      size: 70,
    );
  }
  return null;
}

String vezDe = "X";

void alteraJogador() {
  vezDe = vezDe == "X" ? "O" : "X";
}

void adicionarJogada(
  int linha,
  int coluna,
) {
  if (tabuleiro[linha][coluna].isEmpty && vencedor.isEmpty) {
    tabuleiro[linha][coluna] = vezDe;
    alteraJogador();

    String? win = checaVencedor();
    if (win != null) {
      vencedor = win;
    } else if (verificaEmpate()) {
      vencedor = "Empate";
    }
  }
}

String? checaVencedor() {
  for (int i = 0; i < 3; i++) {
    if (tabuleiro[i][0] != "" &&
        tabuleiro[i][0] == tabuleiro[i][1] &&
        tabuleiro[i][1] == tabuleiro[i][2]) {
      outrosIcones = [
        const Color.fromARGB(120, 244, 67, 54),
        const Color.fromARGB(120, 76, 175, 79),
      ];
      vencedoresPosition = [
        [i, 0],
        [i, 1],
        [i, 2],
      ];
      return tabuleiro[i][0];
    }
  }

  for (int i = 0; i < 3; i++) {
    if (tabuleiro[0][i] != "" &&
        tabuleiro[0][i] == tabuleiro[1][i] &&
        tabuleiro[1][i] == tabuleiro[2][i]) {
      outrosIcones = [
        const Color.fromARGB(120, 244, 67, 54),
        const Color.fromARGB(120, 76, 175, 79),
      ];
      vencedoresPosition = [
        [0, i],
        [1, i],
        [2, i],
      ];
      return tabuleiro[0][i];
    }
  }

  if (tabuleiro[0][0] != "" &&
      tabuleiro[0][0] == tabuleiro[1][1] &&
      tabuleiro[1][1] == tabuleiro[2][2]) {
    outrosIcones = [
      const Color.fromARGB(120, 244, 67, 54),
      const Color.fromARGB(120, 76, 175, 79),
    ];
    vencedoresPosition = [
      [0, 0],
      [1, 1],
      [2, 2],
    ];
    return tabuleiro[0][0];
  }

  if (tabuleiro[0][2] != "" &&
      tabuleiro[0][2] == tabuleiro[1][1] &&
      tabuleiro[1][1] == tabuleiro[2][0]) {
    outrosIcones = [
      const Color.fromARGB(120, 244, 67, 54),
      const Color.fromARGB(120, 76, 175, 79),
    ];
    vencedoresPosition = [
      [0, 2],
      [1, 1],
      [2, 0],
    ];
    return tabuleiro[0][2];
  }

  return null;
}

bool verificaEmpate() {
  for (var row in tabuleiro) {
    if (row.contains("")) {
      return false;
    }
  }
  return true;
}

void resetGame(Function atualizarTela) {
  tabuleiro = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""],
  ];
  vencedor = "";
  vencedoresPosition = null;
  vezDe = "X";
  atualizarTela();
}
