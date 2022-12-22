import 'package:concentration/utils/constants/app_game_type.dart';
import 'package:concentration/utils/constants/game_parameters.dart';
import 'package:equatable/equatable.dart';

class GameParametersEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ChooseDifficulty extends GameParametersEvent {
  final String difficulty;
  ChooseDifficulty({required this.difficulty});
}

class NumberOfCards extends GameParametersEvent {
  final double numCards;
  NumberOfCards({required this.numCards});
}

class ChooseType extends GameParametersEvent {
  final GameType type;
  ChooseType({required this.type});
}
