import 'package:concentration/bloc/game_parameters/game_parameters_bloc.dart';
import 'package:concentration/bloc/game_parameters/game_parameters_event.dart';
import 'package:concentration/bloc/game_parameters/game_parameters_state.dart';
import 'package:concentration/screens/select_difficulty_screen.dart';
import 'package:concentration/utils/constants/app_alignment.dart';
import 'package:concentration/utils/constants/app_game_type.dart';
import 'package:concentration/utils/constants/app_strings.dart';
import 'package:concentration/utils/constants/app_text_styles.dart';
import 'package:concentration/utils/constants/game_parameters.dart';
import 'package:concentration/widgets/big_button.dart';
import 'package:concentration/widgets/custom_scaffold.dart';
import 'package:concentration/widgets/main_button.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GameTypeScreen extends StatelessWidget {
  static const String routeName = "/choose_type";

  const GameTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gpBloc = BlocProvider.of<GameParametersBloc>(context);

    return CustomScaffold(
      appBarContent: Text(
        AppStrings.chooseGameType,
        style: AppTextStyles.irishGrover40regular,
      ),
      scaffoldBody:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        SizedBox(height: AppAlignment.fromTop),
        MainButton(
            onPressed: () {
              Navigator.of(context).pushNamed(GameDifficultyScreen.routeName);
              gpBloc.add(ChooseType(type: GameType.byTime));
            },
            text: AppStrings.byTime),
        MainButton(
            onPressed: () {
              Navigator.of(context).pushNamed(GameDifficultyScreen.routeName);
              gpBloc.add(ChooseType(type: GameType.byAmountOfMoves));
            },
            text: AppStrings.byMoves),
        SizedBox(height: AppAlignment.toBottom),
      ]),
    );
  }
}
