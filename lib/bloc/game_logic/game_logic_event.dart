import 'package:concentration/app/concentration.dart';
import 'package:concentration/utils/constants/app_game_type.dart';
import 'package:concentration/utils/constants/game_parameters.dart';
import 'package:equatable/equatable.dart';

class GameLogicEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FlipCard extends GameLogicEvent {
  final int index;
  FlipCard({required this.index});
}

class CreateGame extends GameLogicEvent {
  final Concentration game;
  CreateGame({required this.game});
}
