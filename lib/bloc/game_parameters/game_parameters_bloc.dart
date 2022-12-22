import 'package:bloc/bloc.dart';
import 'package:concentration/bloc/game_parameters/game_parameters_event.dart';
import 'package:concentration/bloc/game_parameters/game_parameters_state.dart';
import 'package:concentration/bloc/slider/slider_event.dart';
import 'package:concentration/bloc/slider/slider_state.dart';
import 'package:concentration/utils/constants/app_game_type.dart';
import 'package:concentration/utils/constants/game_parameters.dart';

class GameParametersBloc
    extends Bloc<GameParametersEvent, GameParametersState> {
  double _numCards = 12;
  String _difficulty = GameDifficulty.levelEasy;
  GameType _type = GameType.byAmountOfMoves;

  GameParametersBloc()
      : super(const GameParametersState(
            numCards: 12,
            type: GameType.byAmountOfMoves,
            difficulty: GameDifficulty.levelEasy)) {
    on<ChooseDifficulty>((event, emit) {
      _difficulty = event.difficulty;
      return emit(GameParametersState(
          numCards: _numCards, type: _type, difficulty: _difficulty));
    });

    on<ChooseType>((event, emit) {
      _type = event.type;
      return emit(GameParametersState(
          numCards: _numCards, type: _type, difficulty: _difficulty));
    });

    on<NumberOfCards>((event, emit) {
      _numCards = event.numCards;
      return emit(GameParametersState(
          numCards: _numCards, type: _type, difficulty: _difficulty));
    });
  }
}
