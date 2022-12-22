import 'package:concentration/app/concentration.dart';
import 'package:concentration/bloc/game_logic/game_logic_bloc.dart';
import 'package:concentration/bloc/game_logic/game_logic_event.dart';
import 'package:concentration/bloc/game_parameters/game_parameters_bloc.dart';
import 'package:concentration/bloc/game_parameters/game_parameters_event.dart';
import 'package:concentration/screens/game_screen.dart';
import 'package:concentration/screens/test_screen.dart';
import 'package:concentration/utils/constants/app_alignment.dart';
import 'package:concentration/utils/constants/app_strings.dart';
import 'package:concentration/utils/constants/app_text_styles.dart';
import 'package:concentration/utils/constants/game_parameters.dart';
import 'package:concentration/widgets/custom_scaffold.dart';
import 'package:concentration/widgets/main_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameDifficultyScreen extends StatelessWidget {
  static const String routeName = "/choose_difficulty";

  const GameDifficultyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gpBloc = BlocProvider.of<GameParametersBloc>(context);
    final glBloc = BlocProvider.of<GameLogicBloc>(context);

    return CustomScaffold(
        appBarContent: Text(
          AppStrings.selectDifficulty,
          style: AppTextStyles.irishGrover40regular,
        ),
        scaffoldBody: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: AppAlignment.fromTop),
            MainButton(
                onPressed: () {
                  gpBloc.add(
                      ChooseDifficulty(difficulty: GameDifficulty.levelEasy));
                  glBloc.add(CreateGame(
                      game: Concentration(
                          gameDifficulty: GameDifficulty.levelEasy,
                          gameType: gpBloc.state.type,
                          numCards: gpBloc.state.numCards.toInt())));
                  Navigator.of(context)
                      .pushReplacementNamed(GameScreen.routeName);
                },
                text: AppStrings.levelEasy),
            MainButton(
                onPressed: () {
                  gpBloc.add(
                      ChooseDifficulty(difficulty: GameDifficulty.levelMedium));
                  glBloc.add(CreateGame(
                      game: Concentration(
                          gameDifficulty: GameDifficulty.levelMedium,
                          gameType: gpBloc.state.type,
                          numCards: gpBloc.state.numCards.toInt())));
                  Navigator.of(context)
                      .pushReplacementNamed(GameScreen.routeName);
                },
                text: AppStrings.levelMedium),
            MainButton(
                onPressed: () {
                  gpBloc.add(
                      ChooseDifficulty(difficulty: GameDifficulty.levelHard));
                  glBloc.add(CreateGame(
                      game: Concentration(
                          gameDifficulty: GameDifficulty.levelHard,
                          gameType: gpBloc.state.type,
                          numCards: gpBloc.state.numCards.toInt())));
                  Navigator.of(context)
                      .pushReplacementNamed(GameScreen.routeName);
                },
                text: AppStrings.levelHard),
            Text("difficulty: ${gpBloc.state.difficulty}"),
            Text("numCards: ${gpBloc.state.numCards}"),
            SizedBox(height: AppAlignment.toBottom),
          ],
        ));
  }
}
