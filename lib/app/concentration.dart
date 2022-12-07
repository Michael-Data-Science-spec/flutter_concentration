import 'package:flutter/material.dart';
import 'card.dart';

enum GameType { byType, byAmountOfMoves }

class Concentration {
  final GameType gameType;
  List<ConcentrationCard> listOfCards;
  int? madeMoves;
  bool? gameOver;
  // ConcentrationCard? flipped1;
  // ConcentrationCard? flipped2;

  Concentration(this.gameType, this.listOfCards) {
    setGameEndCounter();
  }

  void setGameEndCounter() {
    if (gameType == GameType.byType) {
      madeMoves = 0;
    } else {
      gameOver = false;
    }
  }

  void chooseCard(ConcentrationCard card) {
    // if (flipped1 != null && flipped2 != null && flipped1 != flipped2) {
    //   flipped1?.flipCard();
    //   flipped2?.flipCard();
    //   flipped1 = null;
    //   flipped2 = null;
    // } else if (flipped1 != null && flipped2 != null && flipped1 == flipped2) {
    //   flipped1 == null;
    //   flipped2 == null;
    // }

    // flipped2 = flipped1 != null ? card : null;
    // flipped1 = flipped1 ?? card;
    card.flipCard();
  }
}
