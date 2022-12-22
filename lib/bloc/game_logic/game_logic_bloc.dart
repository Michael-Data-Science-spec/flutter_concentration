import 'package:bloc/bloc.dart';
import 'package:concentration/app/card.dart';
import 'package:concentration/app/concentration.dart';
import "package:bloc/bloc.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:concentration/app/start_game.dart';
import 'package:concentration/bloc/game_logic/game_logic_event.dart';
import 'package:concentration/bloc/game_logic/game_logic_state.dart';
import 'package:concentration/bloc/game_parameters/game_parameters_event.dart';
import 'package:concentration/bloc/game_parameters/game_parameters_state.dart';
import 'package:concentration/bloc/slider/slider_event.dart';
import 'package:concentration/bloc/slider/slider_state.dart';
import 'package:concentration/utils/constants/app_game_type.dart';
import 'package:concentration/utils/constants/game_parameters.dart';
import 'package:flutter/cupertino.dart';

class GameLogicBloc extends Bloc<GameLogicEvent, GameLogicState> {
  Concentration? game;
  ConcentrationCard? flipped1;
  ConcentrationCard? flipped2;

  GameLogicBloc()
      : super(GameLogicState(
            matchedCards: List<bool>.empty(),
            flippedCards: List<bool>.empty(),
            flipped1: null,
            flipped2: null,
            gameDifficulty: GameDifficulty.levelEasy,
            gameType: GameType.byAmountOfMoves,
            numCards: 12)) {
    on<FlipCard>((event, emit) {
      int cardIdx = event.index;
      flipped2 = (flipped1 != null) ? game!.listOfCards[cardIdx] : null;
      flipped1 ??= game!.listOfCards[cardIdx];

      if (flipped1 != null && flipped2 != null && flipped1 == flipped2) {
        flipped1!.matchCard();
        flipped2!.matchCard();

        game!.make_move(flipped1!, flipped2!);
        // game!.matchedCards[flipped1!.index] = true;
        // game!.matchedCards[flipped2!.index] = true;

        flipped1 = null;
        flipped2 = null;
      } else if (flipped1 != null && flipped2 != null) {
        flipped1 = null;
        flipped2 = null;
      }
      return emit(GameLogicState(
          matchedCards: game!.matchedCards,
          flippedCards: game!.flippedCards,
          flipped1: flipped1,
          flipped2: flipped2,
          gameDifficulty: game!.gameDifficulty,
          gameType: game!.gameType,
          numCards: game!.numCards));
    });

    on<CreateGame>((event, emit) {
      Concentration _game = event.game;
      game = _game;
      print("new game created difficulty: ${game!.gameDifficulty}");
      return emit(GameLogicState(
          matchedCards: game!.matchedCards,
          flippedCards: game!.flippedCards,
          flipped1: flipped1,
          flipped2: flipped2,
          gameDifficulty: game!.gameDifficulty,
          gameType: game!.gameType,
          numCards: game!.numCards));
    });
  }
}
