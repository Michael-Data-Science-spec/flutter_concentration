import 'package:concentration/utils/constants/app_game_type.dart';
import 'package:concentration/utils/constants/app_images.dart';
import 'package:concentration/utils/constants/game_parameters.dart';
import 'package:flutter/material.dart';
import 'card.dart';

const gameEnd = {
  GameDifficulty.levelEasy: [2, 4],
  GameDifficulty.levelMedium: [1.5, 3],
  GameDifficulty.levelHard: [1, 2],
};

class Concentration {
  final int numCards;
  final String gameDifficulty;
  final GameType gameType;

  late List<ConcentrationCard> listOfCards;
  late List<bool> flippedCards;
  late List<bool> matchedCards;
  late Duration gameDuration;
  late int maxMoves;
  late DateTime startGame;

  int madeMoves = 0;
  bool gameOver = false;

  Concentration(
      {required this.numCards,
      required this.gameDifficulty,
      required this.gameType}) {
    List<int> indices = List<int>.empty(growable: true);
    listOfCards = List<ConcentrationCard>.empty(growable: true);
    flippedCards = List<bool>.filled(numCards, false);
    matchedCards = List<bool>.filled(numCards, false);

    for (int i = 0; i < numCards; i++) {
      indices.add(i);
    }

    indices.shuffle();

    for (int i = 0; i < numCards; i++) {
      int imgIdx = indices[i];
      ConcentrationCard newCard =
          ConcentrationCard(AppImages.imageList[imgIdx ~/ 2], i);

      listOfCards.add(newCard);
    }
  }

  void check_game_over() {
    if (!flippedCards.contains(false)) {
      gameOver = true;
    } else if (gameType == GameType.byAmountOfMoves && madeMoves >= maxMoves) {
      gameOver = true;
    } else if (gameType == GameType.byTime &&
        DateTime.now().subtract(gameDuration).isAfter(startGame)) {
      gameOver = true;
    }
  }

  void get_limit() {
    startGame = DateTime.now();
    gameDuration =
        Duration(seconds: (gameEnd[gameDifficulty]![0] * numCards).toInt());
    maxMoves = gameEnd[gameDifficulty]![1].toInt() * numCards;
  }

  void make_move(ConcentrationCard card1, ConcentrationCard card2) {
    madeMoves += 1;
    if (card1 == card2) {
      matchedCards[card1.index] = true;
      matchedCards[card2.index] = true;
    }
    check_game_over();
  }
}
