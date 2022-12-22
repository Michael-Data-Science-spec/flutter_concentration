import 'package:concentration/utils/constants/app_game_type.dart';
import 'package:equatable/equatable.dart';

class GameParametersState extends Equatable {
  final String difficulty;
  final GameType type;
  final double numCards;

  const GameParametersState(
      {required this.numCards, required this.type, required this.difficulty});

  @override
  List<Object> get props => [numCards, type, difficulty];
}
