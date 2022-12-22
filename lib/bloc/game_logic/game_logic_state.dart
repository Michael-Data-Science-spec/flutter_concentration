import 'package:concentration/app/card.dart';
import 'package:concentration/app/concentration.dart';
import 'package:concentration/app/start_game.dart';
import 'package:concentration/utils/constants/app_game_type.dart';
import 'package:equatable/equatable.dart';

class GameLogicState extends Equatable {
  final List<bool> matchedCards;
  final List<bool> flippedCards;
  final ConcentrationCard? flipped1;
  final ConcentrationCard? flipped2;
  final String gameDifficulty;
  final GameType gameType;
  final int numCards;

  const GameLogicState(
      {required this.matchedCards,
      required this.flippedCards,
      required this.gameDifficulty,
      required this.gameType,
      required this.numCards,
      required this.flipped1,
      required this.flipped2});

  @override
  List<Object> get props =>
      [flippedCards, matchedCards, gameDifficulty, gameType, numCards];
}
